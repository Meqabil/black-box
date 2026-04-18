import 'dart:io';
import 'package:black_box/features/cars/domain/entities/car_entity.dart';

abstract class CarRepository{
  Future<CarEntity> addCar({
    required String token,
    required int id,
    required String name,
    required String vClass,
    required String plateNumber,
  });

  Future<void> updateCar({
    File? image,
    required int carId,
    required String driverId,
    required String name,
    required String vClass,
    required String plateNumber,
  });
  Future<void> deleteCar(int id);
  Future<List> getAllCars();
}