
import '../entities/driver_entity.dart';

abstract class DriverRepository{
  Future<DriverEntity> addDriver({
    required String token,
    required String name,
    required String email,
    required String password,
    required String nationalNumber,
    required String licenseNumber,
    required String phone
  });
  Future<void> updateDriver({
    required int id,
    required String name,
    required String email,
    required String phone,
    required String nationalNumber,
    required String licenseNumber,
  });
  Future<void> deleteDriver(int id);
  Future<List> getAllDrivers();
}