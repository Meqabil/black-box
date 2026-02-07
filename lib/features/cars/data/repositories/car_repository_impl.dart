import 'package:black_box/features/cars/data/datasources/car_datasource.dart';
import 'package:black_box/features/cars/domain/entities/car_entity.dart';
import 'package:black_box/features/cars/domain/repositories/car_repository.dart';

class CarRepositoryImpl implements CarRepository{
  CarDataSource carDataSource;
  CarRepositoryImpl(this.carDataSource);
  @override
  Future<CarEntity> addCar({
    required String token,
    required int id,
    required String make,
    required String model,
    required String plateNumber,
    required String year}) {
    return carDataSource.addCar(token: token, id: id, make: make, model: model, plateNumber: plateNumber, year: year);
  }
  @override
  Future<List> getAllCars() {
    return carDataSource.getAllCars();
  }
}