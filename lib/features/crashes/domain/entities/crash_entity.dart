
class CrashEntity {
  int id;
  String tripId;
  String vehicleId;
  String crashedAt;
  String latitude;
  String longitude;
  String location;
  String type;
  String severity;
  double? ax;
  double? ay;
  double? az;
  String yaw;
  String pitch;
  String roll;
  int speedBefore;
  String rpmBefore;
  String coolantTemp;
  String fuelLevel;
  String dtcCodes;
  String sats;
  String createdAt;
  String updatedAt;
  Map trip;
  Map vehicle;

  CrashEntity({
    required this.id,
    required this.tripId,
    required this.vehicleId,
    required this.crashedAt,
    required this.latitude,
    required this.longitude,
    required this.location,
    required this.type,
    required this.severity,
    required this.ax,
    required this.ay,
    required this.az,
    required this.yaw,
    required this.pitch,
    required this.roll,
    required this.speedBefore,
    required this.rpmBefore,
    required this.coolantTemp,
    required this.fuelLevel,
    required this.dtcCodes,
    required this.sats,
    required this.createdAt,
    required this.updatedAt,
    required this.trip,
    required this.vehicle
  });

}