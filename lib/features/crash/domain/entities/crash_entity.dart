import 'package:black_box/features/crash/data/models/sub_models/vehicle_model.dart';
import 'package:black_box/features/crash/domain/entities/sub_entities/vehicle_entity.dart';

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
  String? ax;
  String? ay;
  String? az;
  String yaw;
  String pitch;
  String roll;
  String speedBefore;
  String rpmBefore;
  String coolantTemp;
  String fuelLevel;
  String dtcCodes;
  String sats;
  String createdAt;
  String updatedAt;
  String trip;

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
  });

}