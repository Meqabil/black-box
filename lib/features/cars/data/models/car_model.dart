import 'package:black_box/features/cars/domain/entities/car_entity.dart';

class CarModel extends CarEntity{
  CarModel({
    required super.id,
    required super.ownerId,
    required super.plateNumber,
    required super.make,
    required super.model,
    required super.year,
    required super.driverId,
    required super.createdAt,
    required super.updatedAt
  });

  factory CarModel.fromJson(Map<String,dynamic> json){
    return CarModel(
        id: json['id'] ?? 0,
        ownerId: json['user_id'] ?? '',
        plateNumber: json['plate_number'] ?? '',
        make: json['make'] ?? '',
        model: json['model'] ?? '',
        year: json['year'] ?? '',
        driverId: json['driver_id'] ?? '',
        createdAt: json['created_at'] ?? '',
        updatedAt: json['updated_at']
    );
  }
  Map<String,dynamic> toJson(CarModel model){
    return {
      "user_id": model.ownerId,
      "plate_number": model.plateNumber,
      "make": model.make,
      "model": model.model,
      "year": model.year,
      "driver_id": model.driverId,
      "updated_at": model.updatedAt,
      "created_at": model.createdAt,
      "id": model.id
    };
  }
}