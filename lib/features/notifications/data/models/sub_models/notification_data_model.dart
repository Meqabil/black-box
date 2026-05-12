import 'package:black_box/features/notifications/data/models/sub_models/sub_models/notification_content_model.dart';

class NotificationDataModel {
  int? unreadCount;
  List<NotificationContentModel>? notifications;

  NotificationDataModel({this.unreadCount, this.notifications});

  NotificationDataModel.fromJson(Map<String, dynamic> json) {
    unreadCount = json['unread_count'];
    if (json['notifications'] != null) {
      notifications = <NotificationContentModel>[];
      json['notifications'].forEach((v) {
        notifications!.add(NotificationContentModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['unread_count'] = this.unreadCount;
    if (this.notifications != null) {
      data['notifications'] =
          this.notifications!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}