import 'package:black_box/core/network/dio_helper.dart';
import 'package:black_box/core/constants/global.dart';
import 'package:black_box/core/constants/links.dart';
import 'package:black_box/features/notifications/data/models/sub_models/notification_data_model.dart';
import '../../../../core/utils/notification_helper.dart';

class NotificationDataSource{

  Future<NotificationDataModel> getNotifications() async{
    final response = await DioHelper.dio.get(AppLink.getNotifications);
    final status = response.data['status'];
    if(status == "success"){
      final notifications = NotificationDataModel.fromJson(response.data['data']);
      return notifications;
    }
    return NotificationDataModel(notifications: [],unreadCount: 0);
  }


  Future<void> checkNotifications() async{
    final oldCount = pref!.getInt("notification_count") ?? 0;
    final response = await DioHelper.dio.get(AppLink.getNotifications);
    final data = response.data['data']['notifications'] as List;

    final int newCount = data.length;
    if(newCount > oldCount){
      await showNotification(data[newCount - 1]['data']['title'], data[newCount - 1]['data']['message']);
      await pref!.setInt('notification_count', newCount);
    }
  }

  Future<void> makeNotificationRead() async{
    await DioHelper.dio.get(AppLink.makeNotificationRead);
  }
}