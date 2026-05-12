

import '../../../data/models/sub_models/sub_models/sub_models/data_model.dart';

class NotificationContentEntity{
  String? id;
  String? type;
  String? notifiableType;
  String? notifiableId;
  DataModel? data;
  String? readAt;
  String? createdAt;
  String? updatedAt;

  NotificationContentEntity({
    this.id,
    this.type,
    this.notifiableType,
    this.notifiableId,
    this.data,
    this.readAt,
    this.createdAt,
    this.updatedAt
  });
}