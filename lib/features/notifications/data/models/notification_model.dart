import 'package:black_box/features/notifications/data/models/sub_models/notification_data_model.dart';
import 'package:black_box/features/notifications/domain/entities/notification_entity.dart';

class NotificationModel extends NotificationEntity {
  @override
  String? status;
  NotificationDataModel? notificationDataModel;

  NotificationModel({this.status, this.notificationDataModel});

  NotificationModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    notificationDataModel = json['data'] != null ? NotificationDataModel.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['status'] = this.status;
    if (this.notificationContentModel != null) {
      data['data'] = this.notificationContentModel!.toJson();
    }
    return data;
  }
}
