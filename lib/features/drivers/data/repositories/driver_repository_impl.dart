
import '../../domain/entities/driver_entity.dart';
import '../../domain/repositories/driver_repository.dart';
import '../datasources/driver_datasource.dart';

class DriverRepositoryImpl implements DriverRepository{
  DriverDataSource driverDataSource;
  DriverRepositoryImpl(this.driverDataSource);
  @override
  Future<DriverEntity> addDriver({
    required String name,
  }) {
    return driverDataSource.addDriver(name: name,);
  }
  @override
  Future<List> getAllDrivers() {
    return driverDataSource.getAllDrivers();
  }

  @override
  Future<void> deleteDriver(int id) async{
    driverDataSource.deleteDriver(id);
  }

  @override
  Future<void> updateDriver({required int id, required String name,}) async {
    driverDataSource.updateDriver(id: id, name: name,);
  }

  @override
  Future<DriverEntity> showOneDriver(id) {
    return driverDataSource.showOneDriver(id);
  }
}