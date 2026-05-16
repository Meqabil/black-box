
import 'package:black_box/core/network/dio_helper.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:workmanager/workmanager.dart';
import '../../features/notifications/data/datasources/notification_datasource.dart';
import '../constants/global.dart';
import '../theme/app_color.dart';




final FlutterLocalNotificationsPlugin notifications =
FlutterLocalNotificationsPlugin();
@pragma('vm:entry-point')
void callbackDispatcher() {
  Workmanager().executeTask((task, inputData) async {
    try{

    } catch (e){
      print('[WorkManager] Error: $e');
      return Future.value(false);
    }
    pref = await SharedPreferences.getInstance();
    DioHelper.init();
    NotificationDataSource notificationDataSource = NotificationDataSource();
    print('WORKMANAGER STARTED');
    await notificationDataSource.checkNotifications();
    return Future.value(true);
  });
}

Future<void> initNotifications() async {
  const android = AndroidInitializationSettings('@mipmap/ic_launcher');
  const settings = InitializationSettings(android: android,);
  await notifications.initialize(
      settings,
      onDidReceiveNotificationResponse: (details){
        if (details.payload == 'notify') {
          navigatorKey.currentState?.pushNamed('/notification');
        }
      }
  );
}


Future<void> showNotification(String title,String content) async {
  var android = const AndroidNotificationDetails(
    'black_box_channel',
    'Black Box Notifications',
    channelDescription: 'Notifications for new Black Box alerts',
    importance: Importance.max,
    priority: Priority.high,
    color: AppColor.mainRedColor,
    playSound: true,
  );

  await notifications.show(
      0,
      title,
      content,
      NotificationDetails(android: android,),
      payload: "notify"
  );


}



Future<void> registerNotificationWorker() async {
  await Workmanager().initialize(
    callbackDispatcher,
    isInDebugMode: false, // set true only while testing
  );

  await Workmanager().registerPeriodicTask(
    'black_box_worker',
    'check_notifications',
    frequency: const Duration(minutes: 15),
    initialDelay: const Duration(seconds: 10),
    existingWorkPolicy: ExistingWorkPolicy.keep, // avoids duplicates on restart
    constraints: Constraints(
      networkType: NetworkType.connected, // only run when online
    ),
  );
}

