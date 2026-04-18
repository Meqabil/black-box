
class CarEntity {
  int id;
  String ownerId; //user_id
  String plateNumber;
  String name;
  String vClass;
  String driverId;
  String createdAt;
  String updatedAt;
  String? image;
  CarEntity({
    required this.id,
    required this.ownerId,
    required this.plateNumber,
    required this.name,
    required this.vClass,
    required this.driverId,
    required this.createdAt,
    required this.updatedAt,
    this.image
  });
}


