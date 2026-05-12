
import 'package:black_box/features/notifications/data/models/sub_models/sub_models/sub_models/data_model.dart';
import 'package:black_box/features/notifications/domain/entities/sub_entities/notification_content_entity.dart';

class NotificationContentModel extends NotificationContentEntity{
  String? id;
  String? type;
  String? notifiableType;
  String? notifiableId;
  DataModel? data;
  String? readAt;
  String? createdAt;
  String? updatedAt;

  NotificationContentModel(
      {this.id,
        this.type,
        this.notifiableType,
        this.notifiableId,
        this.data,
        this.readAt,
        this.createdAt,
        this.updatedAt});

  NotificationContentModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    notifiableType = json['notifiable_type'];
    notifiableId = json['notifiable_id'];
    data = json['data'] != null ? new DataModel.fromJson(json['data']) : null;
    readAt = json['read_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['type'] = this.type;
    data['notifiable_type'] = this.notifiableType;
    data['notifiable_id'] = this.notifiableId;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['read_at'] = this.readAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}