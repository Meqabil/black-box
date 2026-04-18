
import '../../domain/entities/driver_entity.dart';
import '../../domain/repositories/driver_repository.dart';
import '../datasources/driver_datasource.dart';

class DriverRepositoryImpl implements DriverRepository{
  DriverDataSource carDataSource;
  DriverRepositoryImpl(this.carDataSource);
  @override
  Future<DriverEntity> addDriver({
    required String token,
    required String name,
    required String email,
    required String password,
    required String nationalNumber,
    required String licenseNumber,
    required String phone}) {
    return carDataSource.addDriver(token: token, name: name, email: email, password: password, nationalNumber: nationalNumber, licenseNumber: licenseNumber, phone: phone);
  }
  @override
  Future<List> getAllDrivers() {
    return carDataSource.getAllDrivers();
  }

  @override
  Future<void> deleteDriver(int id) async{
    carDataSource.deleteDriver(id);
  }

  @override
  Future<void> updateDriver({required int id, required String name, required String email, required String phone, required String nationalNumber, required String licenseNumber}) async {
    carDataSource.updateDriver(id: id, name: name, email: email, phone: phone, nationalNumber: nationalNumber, licenseNumber: licenseNumber);
  }
}