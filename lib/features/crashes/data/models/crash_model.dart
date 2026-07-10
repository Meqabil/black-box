
import 'package:black_box/features/crashes/data/models/sub_models/vehicle_model.dart';
import 'package:black_box/features/crashes/domain/entities/crash_entity.dart';

class CrashModel extends CrashEntity{


  CrashModel({
    required super.id,
    required super.tripId,
    required super.vehicleId,
    required super.crashedAt,
    required super.latitude,
    required super.longitude,
    required super.location,
    required super.type,
    required super.severity,
    required super.ax,
    required super.ay,
    required super.az,
    required super.yaw,
    required super.pitch,
    required super.roll,
    required super.speedBefore,
    required super.rpmBefore,
    required super.coolantTemp,
    required super.fuelLevel,
    required super.dtcCodes,
    required super.sats,
    required super.createdAt,
    required super.updatedAt,
    required super.trip,
    required super.vehicle
  });

  factory CrashModel.fromJson(Map<String, dynamic> json) => CrashModel(
    id: json["id"] ?? 0,
    tripId: json["trip_id"] ?? '',
    vehicleId: json["vehicle_id"] ?? '',
    crashedAt: '${json["crashed_at"]}' ?? '',
    latitude: json["latitude"] ?? '',
    longitude: json["longitude"] ?? '',
    location: json["location"] ?? '',
    type: json["type"] ?? '',
    severity: json["severity"] ?? '',
    ax: json["ax"] ?? 0,
    ay: json["ay"] ?? 0,
    az: json["az"] ?? 0,
    yaw: json["yaw"] ?? '0.0',
    pitch: json["pitch"] ?? '0.0',
    roll: json["roll"] ?? '0.0',
    speedBefore: json["speed_before"] ?? 0,
    rpmBefore: json["rpm_before"] ?? '',
    coolantTemp: json["coolant_temp"] ?? 0,
    fuelLevel: json["fuel_level"] ?? 0,
    dtcCodes: json["dtc_codes"] ?? '',
    sats: json["sats"] ?? '',
    createdAt: json["created_at"] ?? '',
    updatedAt: json["updated_at"] ?? '',
    trip: json["trip"] ?? {},
    vehicle: VehicleModel.fromJson(json["vehicle"] ?? {})
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "trip_id": tripId,
    "vehicle_id": vehicleId,
    "crashed_at": crashedAt,
    "latitude": latitude,
    "longitude": longitude,
    "location": location,
    "type": type,
    "severity": severity,
    "ax": ax,
    "ay": ay,
    "az": az,
    "yaw": yaw,
    "pitch": pitch,
    "roll": roll,
    "speed_before": speedBefore,
    "rpm_before": rpmBefore,
    "coolant_temp": coolantTemp,
    "fuel_level": fuelLevel,
    "dtc_codes": dtcCodes,
    "sats": sats,
    "created_at": createdAt,
    "updated_at": updatedAt,
    "trip": trip,
    "vehicle":vehicle
  };
}