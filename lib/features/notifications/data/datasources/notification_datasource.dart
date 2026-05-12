import 'package:black_box/core/api/dio_helper.dart';
import 'package:black_box/core/constants/links.dart';
import 'package:black_box/features/notifications/data/models/sub_models/notification_data_model.dart';

class NotificationDataSource{

  Future<NotificationDataModel> getNotifications() async{
    final response = await DioHelper.dio.get(AppLink.getNotifications);
    final status = response.data['status'];
    if(status == "success"){
      print(response.data['data']);
      final notifications = NotificationDataModel.fromJson(response.data['data']);
      return notifications;
    }
    return NotificationDataModel(notifications: [],unreadCount: 0);
  }
}