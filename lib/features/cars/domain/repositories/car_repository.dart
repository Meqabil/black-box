import 'package:black_box/features/cars/domain/entities/car_entity.dart';

abstract class CarRepository{
  Future<CarEntity> addCar({
    required String token,
    required int id,
    required String make,
    required String model,
    required String plateNumber,
    required String year});
  Future<List> getAllCars();
}