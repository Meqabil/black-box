import 'dart:io';

import 'package:black_box/features/cars/data/datasources/car_datasource.dart';
import 'package:black_box/features/cars/domain/entities/car_entity.dart';
import 'package:black_box/features/cars/domain/repositories/car_repository.dart';

class CarRepositoryImpl implements CarRepository{
  CarDataSource carDataSource;
  CarRepositoryImpl(this.carDataSource);
  @override
  Future<CarEntity> addCar({
    required int id,
    required String name,
    required String vClass,
    required String plateNumber,
  }) {
    return carDataSource.addCar(id: id, name: name, vClass: vClass, plateNumber: plateNumber,);
  }
  @override
  Future<List> getAllCars() {
    return carDataSource.getAllCars();
  }

  @override
  Future<void> deleteCar(int id) async {
    carDataSource.deleteCar(id);
  }

  @override
  Future<void> updateCar({
    File? image,
    required int carId,
    required String driverId,
    required String name,
    required String vClass,
    required String plateNumber,
  }) async {
    carDataSource.updateCar(image: image, carId: carId, driverId: driverId,name: name,vClass: vClass, plateNumber: plateNumber);
  }
}