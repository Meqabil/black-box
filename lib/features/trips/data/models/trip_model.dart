import 'package:black_box/features/drivers/domain/entities/driver_entity.dart';
import 'package:black_box/features/trips/domain/entities/trip_entity.dart';

import '../../../drivers/data/models/driver_model.dart';

class TripModel extends TripEntity{
  TripModel({
    required super.id,
    required super.vehicleId,
    required super.driverId,
    required super.startTime,
    required super.endTime,
    required super.startAddress,
    required super.endAddress,
    required super.startLat,
    required super.endLat,
    required super.startLng,
    required super.endLng,
    required super.status,
    required super.distanceKm,
    required super.avgSpeed,
    required super.maxSpeed,
    required super.createdAt,
    required super.updatedAt,
    required super.driverEntity,
    required super.locations
  });

  factory TripModel.fromJson(Map<String,dynamic> json){
    return TripModel(
        id: json['id'] ?? 0,
        vehicleId: json['vehicle_id'] ?? '',
        driverId: json['driver_id'] ?? '',
        startTime: json['start_time'] ?? '',
        endTime: json['end_time'] ?? '',
        startAddress: json['start_address'] ?? '',
        endAddress: json['end_address'] ?? '',
        startLat: json['start_lat'] ?? '',
        endLat: json['end_lat'] ?? '',
        startLng: json['start_lng'] ?? '',
        endLng: json['end_lng'] ?? '',
        status: json['status'] ?? '',
        distanceKm: json['distance_km'] ?? '',
        avgSpeed: json['avg_speed'] ?? '',
        maxSpeed: json['max_speed'] ?? '',
        createdAt: json['created_at'] ?? '',
        updatedAt: json['updated_at'] ?? '',
        driverEntity: DriverModel.fromJson(json['driver']) ,
        locations: json['locations'] ?? [],
    );
  }


}