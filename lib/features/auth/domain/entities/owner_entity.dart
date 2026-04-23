class OwnerEntity{
  final int id;
  final String name;
  final String email;
  final String role;
  final String createdAt;
  final String updatedAt;
  final String profileImage;
  final String vehiclesCount;
  final String driversCount;


  OwnerEntity({
    required this.id,
    required this.name,
    required this.email,
    required this.role,
    required this.createdAt,
    required this.updatedAt,
    required this.profileImage,
    required this.vehiclesCount,
    required this.driversCount
  });
}