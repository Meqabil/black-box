
import 'package:black_box/features/crashes/domain/entities/sub_entities/vehicle_entity.dart';

class VehicleModel extends VehicleEntity{

  VehicleModel({
    required super.id,
    required super.driverId,
    required super.userId,
    required super.vehicleName,
    required super.plateNumber,
    required super.vehicleClass,
    required super.createdAt,
    required super.updatedAt,
    required super.image,
  });

  factory VehicleModel.fromJson(Map<String, dynamic> json) => VehicleModel(
    id: json["id"],
    driverId: json["driver_id"],
    userId: json["user_id"],
    vehicleName: json["vehicle_name"],
    plateNumber: json["plate_number"],
    vehicleClass: json["vehicle_class"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "driver_id": driverId,
    "user_id": userId,
    "vehicle_name": vehicleName,
    "plate_number": plateNumber,
    "vehicle_class": vehicleClass,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "image": image,
  };
}
