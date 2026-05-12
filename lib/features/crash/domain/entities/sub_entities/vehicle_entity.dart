
class VehicleEntity {
  int id;
  dynamic driverId;
  String userId;
  String vehicleName;
  String plateNumber;
  String vehicleClass;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic image;

  VehicleEntity({
    required this.id,
    required this.driverId,
    required this.userId,
    required this.vehicleName,
    required this.plateNumber,
    required this.vehicleClass,
    required this.createdAt,
    required this.updatedAt,
    required this.image,
  });

}
