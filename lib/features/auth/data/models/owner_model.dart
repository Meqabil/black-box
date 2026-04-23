import 'package:black_box/features/auth/domain/entities/owner_entity.dart';

class OwnerModel extends OwnerEntity{
  OwnerModel({
    required super.id,
    required super.name,
    required super.email,
    required super.role,
    required super.createdAt,
    required super.updatedAt,
    required super.profileImage,
    required super.driversCount,
    required super.vehiclesCount,
  });

  factory OwnerModel.fromJson(Map<String,dynamic> json){
    return OwnerModel(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      email: json['email'],
      role: json['role'] ?? '',
      createdAt: json['created_at'] ?? '',
      updatedAt: json['updated_at'] ?? '',
      profileImage: json['profile_image'] ?? '',
      driversCount: json['drivers_count'] ?? '',
      vehiclesCount: json['vehicles_count'] ?? '',
    );
  }
}