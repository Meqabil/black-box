import 'package:black_box/features/cars/domain/entities/car_entity.dart';
import 'package:black_box/features/drivers/domain/repositories/driver_repository.dart';

import '../repositories/car_repository.dart';

class AddCarWithDriverUseCase{
  final CarRepository _carRepository;
  final DriverRepository _driverRepository;
  AddCarWithDriverUseCase(this._carRepository,this._driverRepository);

  Future<CarEntity> call({
    required String? driverName,
    required String carName,
    required String vClass,
    required String plateNumber,
  }) async{
    final driver = await _driverRepository.addDriver(name: driverName ?? 'Unknown');

    print("${driver.id} ${driver.name}");
    final res = await _carRepository.addCar(
      id: driver.id,
      name: carName,
      vClass: vClass,
      plateNumber:
      plateNumber,
    );
    print("res $res");
    return res;
  }
}