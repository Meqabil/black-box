
import 'dart:convert';

import 'package:black_box/features/drivers/domain/entities/driver_entity.dart';

class DriverModel extends DriverEntity{
  DriverModel({
    required super.id,
    required super.name,
    required super.ownerId,
    required super.userId,
    required super.email,
    required super.phone,
    required super.licenseNumber,
    required super.nationalNumber,
    required super.createdAt,
    required super.updatedAt
  });

  factory DriverModel.fromJson(Map<String,dynamic> json){
    return DriverModel(
        id: json['id'] ?? 0,
        ownerId: json['owner_id'] ?? '',
        userId: json['user_id'] ?? '',
        name: json['name'] ?? '',
        email: json['email'] ?? '',
        phone: json['phone'] ?? '',
        licenseNumber: json['license_number'] ?? '',
        nationalNumber: json['national_number'] ?? '',
        createdAt: json['created_at'] ?? '',
        updatedAt: json['updated_at']
    );
  }
  Map<String,dynamic> toJson(DriverModel model){
    return {
      "id": model.id,
      "user_id": model.userId,
      "owner_id": model.ownerId,
      "name": model.name,
      "email": model.email,
      "national_number": model.nationalNumber,
      "license_number": model.licenseNumber,
      "phone": model.phone,
      "updated_at": model.updatedAt,
      "created_at": model.createdAt,
    };
  }
}