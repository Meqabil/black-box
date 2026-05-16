import 'package:black_box/features/drivers/domain/entities/driver_entity.dart';

class TripEntity {
  final int id;
  final String vehicleId;
  final String driverId;
  final String startTime;
  final String endTime;
  final String startAddress;
  final String endAddress;
  final String startLat;
  final String startLng;
  final String endLat;
  final String endLng;
  final String status;
  final String distanceKm;
  final String avgSpeed;
  final String maxSpeed;
  final String createdAt;
  final String updatedAt;
  final DriverEntity driverEntity;
  final List locations;
  TripEntity({
    required this.id,
    required this.vehicleId,
    required this.driverId,
    required this.startTime,
    required this.endTime,
    required this.startAddress,
    required this.endAddress,
    required this.startLat,
    required this.endLat,
    required this.startLng,
    required this.endLng,
    required this.status,
    required this.distanceKm,
    required this.avgSpeed,
    required this.maxSpeed,
    required this.createdAt,
    required this.updatedAt,
    required this.driverEntity,
    required this.locations,
  });
}





