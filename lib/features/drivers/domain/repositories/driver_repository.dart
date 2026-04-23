
import '../entities/driver_entity.dart';

abstract class DriverRepository{
  Future<DriverEntity> addDriver({
    required String name,
  });
  Future<void> updateDriver({
    required int id,
    required String name,
  });
  Future<void> deleteDriver(int id);
  Future<List> getAllDrivers();
}