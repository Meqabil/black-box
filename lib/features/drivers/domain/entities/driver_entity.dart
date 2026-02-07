class DriverEntity {
  int id;
  String userId;
  String ownerId;
  String name;
  String email;
  String nationalNumber;
  String licenseNumber;
  String phone;
  String createdAt;
  String updatedAt;
  DriverEntity({
    required this.id,
    required this.userId,
    required this.ownerId,
    required this.name,
    required this.email,
    required this.nationalNumber,
    required this.licenseNumber,
    required this.phone,
    required this.createdAt,
    required this.updatedAt,
  });
}
