import 'package:black_box/features/notifications/data/models/sub_models/notification_data_model.dart';
import 'package:black_box/features/notifications/data/models/sub_models/sub_models/notification_content_model.dart';

class NotificationDataEntity {
  int? unreadCount;
  List<NotificationContentModel>? notifications;

  NotificationDataEntity({this.unreadCount, this.notifications});

  NotificationDataEntity.fromJson(Map<String, dynamic> json) {
    unreadCount = json['unread_count'];
    if (json['notifications'] != null) {
      notifications = <NotificationContentModel>[];
      json['notifications'].forEach((v) {
        notifications!.add(new NotificationContentModel.fromJson(v));
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