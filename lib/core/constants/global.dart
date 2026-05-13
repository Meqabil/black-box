
import 'dart:io';
import 'package:black_box/features/auth/domain/entities/owner_entity.dart';
import 'package:black_box/features/cars/data/datasources/car_datasource.dart';
import 'package:black_box/features/notifications/data/datasources/notification_datasource.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';
import 'package:image_picker/image_picker.dart';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:workmanager/workmanager.dart';


import '../../features/auth/presentation/screens/login/login_screen.dart';
import 'colors.dart';
Dio dio = Dio();
SharedPreferences? pref;
NotificationDataSource notificationDataSource = NotificationDataSource();

double width = 0;
double height = 0;
final GlobalKey<NavigatorState> navigatorKey =
GlobalKey<NavigatorState>();

ValueNotifier<bool> darkMode = ValueNotifier(pref!.getString("theme") == 'dark');

logOut(BuildContext context ){
  pref!.remove("login_state");
  Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => LoginScreen())
  );
}

Future<File?> pickImages(BuildContext context) async {
  final List<AssetEntity>? result = await AssetPicker.pickAssets(
    context,
    pickerConfig: AssetPickerConfig(
      maxAssets: 1,
      requestType: RequestType.image,
      enableLivePhoto: true,
      pickerTheme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: AppColor.textFieldColor,
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(color: Colors.white),
          toolbarTextStyle: TextStyle(color: Colors.white),
          backgroundColor: Theme.of(context).colorScheme.primary,
          foregroundColor: Colors.yellow,
          iconTheme: IconThemeData(color: Colors.white),
          elevation: 0,
        ),
        canvasColor: Colors.white,
      ),
      specialPickerType: SpecialPickerType.noPreview,
      pageSize: 3,
      gridCount: 3,
    ),
  );
  if(result != null){
    return result[0].file;
  }
}
Future<File?> pickPhotoByCamera() async{
  final picker = ImagePicker();
  XFile? file = await picker.pickImage(source: ImageSource.camera);
  if(file != null){
    return File(file.path);
  }
  return null;
}

loadingSign(BuildContext context){
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context){
      return AlertDialog(
        title: Text("User is signing"),
        content: Center(child: Container(alignment: Alignment.center,height: 200,child: CircularProgressIndicator(color: AppColor.mainRedColor,))),
      );
    }
  );
}


saveUserData(OwnerEntity owner){
  pref!.setString("login_state", "logged_in");
  pref!.setString("name", owner.name);
  pref!.setString("role", owner.role);
  pref!.setString("email", owner.email);
  pref!.setString("id", owner.id.toString());
  pref!.setString("created_at", owner.createdAt);
  pref!.setString("updated_at", owner.updatedAt);
  pref!.setString("profile_image", owner.profileImage);
  pref!.setString("vehicles_count", owner.vehiclesCount);
  pref!.setString("drivers_count", owner.driversCount);
  pref!.setString("token", pref!.getString("token") ?? 'Unknown');
}

getSavedUserData(){
  return OwnerEntity(
      id: int.parse(pref!.getString("id") ?? '0') ,
      name: pref!.getString("name") ?? 'Unknown',
      email: pref!.getString("email") ?? 'Unknown',
      role: pref!.getString("role") ?? 'Unknown',
      driversCount: pref!.getString("drivers_count") ?? 'Unknown',
      vehiclesCount: pref!.getString("vehicles_count") ?? 'Unknown',
      createdAt: pref!.getString("created_at") ?? 'Unknown',
      updatedAt: pref!.getString("updated_at") ?? 'Unknown',
      profileImage: pref!.getString("profile_image") ?? ''
  );
}


Future<bool> isDriverConnectedToCar(int id) async{
  CarDataSource carDataSource = CarDataSource();
  List cars = await carDataSource.getAllCars();
  print("${cars[5].driverId} $id");
  if(cars.any((car) => int.parse(car.driverId) == id,)){
    print("yes");
    return true;
  }
  return false;
}


Map<String,int> countData(int numOfDays){
  int days = numOfDays;
  int months = 0;
  int years = 0;
  int weeks = 0;
  while(days > 364){
    days -= 365;
    years += 1;
  }
  while(days > 29){
    days -= 30;
    months += 1;
  }
  while (days > 6){
    days -= 7;
    weeks += 1;
  }
  return {
    "days": days,
    "months": months,
    "weeks": weeks,
    "years": years,
  };
}

String formatData(context,String date){
  DateTime dateNow = DateTime.now();
  int tempYear = dateNow.year - int.parse(date.substring(0,4));
  int tempMonth = dateNow.month - int.parse(date.substring(5,7));
  int tempDay = dateNow.day - int.parse(date.substring(8,10));
  int numOfDays = tempYear * 365 + tempMonth * 30 + tempDay;
  Map<String,int> dateNums = countData(numOfDays);
  if(dateNums['years'] as int >= 5 || (dateNums['years'] as int == 4 && dateNums['months'] as int > 6)){
    return AppLocalizations.of(context)!.more_than_years(5);
  }else if(dateNums['years'] as int >= 4 || (dateNums['years'] as int == 3 && dateNums['months'] as int > 6)){
    return AppLocalizations.of(context)!.more_than_years(4);

  }else if(dateNums['years'] as int >= 3 || (dateNums['years'] as int == 2 && dateNums['months'] as int > 6)){
    return AppLocalizations.of(context)!.more_than_years(3);
  }else if(dateNums['years'] as int >= 2 || (dateNums['years'] as int == 4 && dateNums['months'] as int > 6)){
    return AppLocalizations.of(context)!.more_than_years(2);
  }else if(dateNums['years'] as int >= 1 || (dateNums['years'] as int == 0 && dateNums['months'] as int > 9)){
    return AppLocalizations.of(context)!.since_year;
  }else if(dateNums['months'] as int >= 3){
    return AppLocalizations.of(context)!.since_months("${dateNums['months']}");
  }else if(dateNums['months'] as int == 2){
    return AppLocalizations.of(context)!.since_two_months;
  }else if(dateNums['months'] as int == 1){
    return AppLocalizations.of(context)!.since_month;
  }else if(dateNums['weeks'] as int >= 3){
    return AppLocalizations.of(context)!.since_weeks("${dateNums['weeks']}");
  }else if(dateNums['weeks'] as int == 2){
    return AppLocalizations.of(context)!.since_two_weeks;
  }else if(dateNums['weeks'] as int == 1){
    return AppLocalizations.of(context)!.since_week;
  }else if(dateNums['days'] == 0){
    return AppLocalizations.of(context)!.today;
  }else if(dateNums['days'] == 1){
    return AppLocalizations.of(context)!.yesterday;
  }else if(dateNums['days'] == 2){
    return AppLocalizations.of(context)!.since_two_days;
  } else {
    return AppLocalizations.of(context)!.since_days("${dateNums['days']}");
  }
}

String formatYear(String date){
  return date.substring(0,4);
}

String formatMonth(BuildContext context,String date){
  String month = date.substring(5,7);
  String day = date.substring(8,10);
  switch(month){
    case == "01":
      return "${AppLocalizations.of(context)!.january} $day";
    case == "02":
      return "${AppLocalizations.of(context)!.february} $day";
    case == "03":
      return "${AppLocalizations.of(context)!.march} $day";
    case == "04":
      return "${AppLocalizations.of(context)!.april} $day";
    case == "05":
      return "${AppLocalizations.of(context)!.may} $day";
    case == "06":
      return "${AppLocalizations.of(context)!.june} $day";
    case == "07":
      return "${AppLocalizations.of(context)!.july} $day";
    case == "08":
      return "${AppLocalizations.of(context)!.august} $day";
    case == "09":
      return "${AppLocalizations.of(context)!.september} $day";
    case == "10":
      return "${AppLocalizations.of(context)!.october} $day";
    case == "11":
      return "${AppLocalizations.of(context)!.november} $day";
    case == "12":
      return "${AppLocalizations.of(context)!.december} $day";
    default:
      return "No date";
  }
}

formatHour(String date){
  int hour = (int.parse(date.substring(11,13)) + 2);
  String minute = date.substring(14,16);
  return "${(hour).toString().padLeft(2,'0')}:${minute.padRight(2,'0')}";
}


@pragma('vm:entry-point')
void callbackDispatcher() {
  Workmanager().executeTask((task, inputData) async {
      await notificationDataSource.checkNotifications();
    return Future.value(true);
  });
}


final FlutterLocalNotificationsPlugin notifications =
FlutterLocalNotificationsPlugin();

Future<void> initNotifications() async {
  const android = AndroidInitializationSettings('@mipmap/ic_launcher');

  const settings = InitializationSettings(
    android: android,
  );


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
  const android = AndroidNotificationDetails(
    'black_box',
    'check_notifications',
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