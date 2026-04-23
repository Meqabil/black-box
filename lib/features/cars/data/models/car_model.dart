import 'package:black_box/core/constants/links.dart';
import 'package:black_box/features/cars/domain/entities/car_entity.dart';

class CarModel extends CarEntity{
  CarModel({
    required super.id,
    required super.ownerId,
    required super.name,
    required super.plateNumber,
    required super.driverId,
    required super.createdAt,
    required super.updatedAt,
    super.image,
    required super.vClass
  });

  factory CarModel.fromJson(Map<String,dynamic> json){
    return CarModel(
        id: json['id'] ?? 0,
        ownerId: json['user_id'] ?? '',
        plateNumber: json['plate_number'] ?? '',
        name: json['vehicle_name'] ?? '',
        vClass: json['vehicle_class'] ?? '',
        driverId: json['driver_id'] ?? '',
        createdAt: json['created_at'] ?? '',
        updatedAt: json['updated_at'],
        image: json['image'] != null ? "${AppLink.rootStorage}/${json['image']}" : '',
    );
  }
  Map<String,dynamic> toJson(CarModel model){
    return {
      "user_id": model.ownerId,
      "plate_number": model.plateNumber,
      "vehicle_name": model.name,
      "vehicle_class": model.vClass,
      "driver_id": model.driverId,
      "updated_at": model.updatedAt,
      "created_at": model.createdAt,
      "id": model.id
    };
  }
}