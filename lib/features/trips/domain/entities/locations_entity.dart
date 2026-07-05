class LocationEntity {
  final int id;
  final String tripId;
  final String latitude;
  final String longitude;
  final String speed;
  final String heading;
  final String altitude;
  final String sats;
  final String rpm;
  final String coolantTemp;
  final String fuelLevel;
  final String? dtcCodes;
  final String ax;
  final String ay;
  final String az;
  final String yaw;
  final String pitch;
  final String roll;
  final DateTime createdAt;
  final DateTime updatedAt;

  const LocationEntity({
    required this.id,
    required this.tripId,
    required this.latitude,
    required this.longitude,
    required this.speed,
    required this.heading,
    required this.altitude,
    required this.sats,
    required this.rpm,
    required this.coolantTemp,
    required this.fuelLevel,
    this.dtcCodes,
    required this.ax,
    required this.ay,
    required this.az,
    required this.yaw,
    required this.pitch,
    required this.roll,
    required this.createdAt,
    required this.updatedAt,
  });
}