class CarEntity {
  int id;
  String ownerId; //user_id
  String plateNumber;
  String make;
  String model;
  String year;
  String driverId;
  String createdAt;
  String updatedAt;
  CarEntity({
    required this.id,
    required this.ownerId,
    required this.plateNumber,
    required this.make,
    required this.model,
    required this.year,
    required this.driverId,
    required this.createdAt,
    required this.updatedAt,
  });
}
