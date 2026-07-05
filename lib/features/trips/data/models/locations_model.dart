
import '../../domain/entities/locations_entity.dart';

class LocationModel extends LocationEntity {
  const LocationModel({
    required super.id,
    required super.tripId,
    required super.latitude,
    required super.longitude,
    required super.speed,
    required super.heading,
    required super.altitude,
    required super.sats,
    required super.rpm,
    required super.coolantTemp,
    required super.fuelLevel,
    super.dtcCodes,
    required super.ax,
    required super.ay,
    required super.az,
    required super.yaw,
    required super.pitch,
    required super.roll,
    required super.createdAt,
    required super.updatedAt,
  });

  factory LocationModel.fromJson(Map<String, dynamic> json) {
    return LocationModel(
      id: json['id'],
      tripId: json['trip_id'] ?? '',
      latitude: json['latitude'] ?? '',
      longitude: json['longitude'] ?? '',
      speed: json['speed'] ?? '',
      heading: json['heading'] ?? '',
      altitude: json['altitude'] ?? '',
      sats: json['sats'] ?? '',
      rpm: json['rpm'] ?? '',
      coolantTemp: json['coolant_temp'] ?? '',
      fuelLevel: json['fuel_level'] ?? '',
      dtcCodes: json['dtc_codes'] ?? '',
      ax: json['ax'] ?? '',
      ay: json['ay'] ?? '',
      az: json['az'] ?? '',
      yaw: json['yaw'] ?? '',
      pitch: json['pitch'] ?? '',
      roll: json['roll'] ?? '',
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'trip_id': tripId,
      'latitude': latitude,
      'longitude': longitude,
      'speed': speed,
      'heading': heading,
      'altitude': altitude,
      'sats': sats,
      'rpm': rpm,
      'coolant_temp': coolantTemp,
      'fuel_level': fuelLevel,
      'dtc_codes': dtcCodes,
      'ax': ax,
      'ay': ay,
      'az': az,
      'yaw': yaw,
      'pitch': pitch,
      'roll': roll,
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
    };
  }

  static List<LocationModel> fromJsonList(List<dynamic> json) {
    return json
        .map((e) => LocationModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}