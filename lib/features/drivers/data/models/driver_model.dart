
import 'dart:convert';

import 'package:black_box/features/drivers/domain/entities/driver_entity.dart';

class DriverModel extends DriverEntity{
  DriverModel({
    required super.id,
    required super.name,
    required super.ownerId,
    required super.createdAt,
    required super.updatedAt
  });

  factory DriverModel.fromJson(Map<String,dynamic> json){
    return DriverModel(
        id: json['id'] ?? 0,
        ownerId: json['owner_id'] ?? 0,
        name: json['name'] ?? '',
        createdAt: json['created_at'] ?? '',
        updatedAt: json['updated_at'] ?? ''
    );
  }
  Map<String,dynamic> toJson(DriverModel model){
    return {
      "id": model.id,
      "owner_id": model.ownerId,
      "name": model.name,
      "updated_at": model.updatedAt,
      "created_at": model.createdAt,
    };
  }
}