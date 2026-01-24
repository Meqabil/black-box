import 'package:black_box/features/auth/domain/entities/owner_entity.dart';

class OwnerModel extends OwnerEntity{
  OwnerModel({
    required super.id,
    required super.name,
    required super.email,
    required super.role,
    required super.nationalNumber,
    required super.birthDate,
    required super.phoneNumber,
    required super.createdAt,
    required super.updatedAt,
  });

  factory OwnerModel.fromJson(Map<String,dynamic> json){
    return OwnerModel(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      email: json['email'],
      role: json['role'] ?? '',
      nationalNumber: json['national_number'] ?? '',
      birthDate: json['birth_date'] ?? '',
      phoneNumber: json['phone_number'] ?? '',
      createdAt: json['created_at'] ?? '',
      updatedAt: json['updated_at'] ?? '',
    );
  }
}