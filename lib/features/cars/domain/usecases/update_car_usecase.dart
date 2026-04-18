import 'dart:io';
import 'package:black_box/features/cars/domain/repositories/car_repository.dart';

class UpdateCarUseCase{
  final CarRepository _carRepository;
  UpdateCarUseCase(this._carRepository);
  call({
  File? image,
  required int carId,
  required String driverId,
  required String name,
  required String vClass,
  required String plateNumber,
  }) async{
    _carRepository.updateCar(image:image, carId: carId, driverId: driverId,name: name, vClass: vClass, plateNumber: plateNumber);
  }
}