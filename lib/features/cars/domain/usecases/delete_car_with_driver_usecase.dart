
import 'package:black_box/features/cars/domain/repositories/car_repository.dart';
import 'package:black_box/features/drivers/domain/repositories/driver_repository.dart';

class DeleteCarWithDriverUseCase{

  final CarRepository _carRepository;
  final DriverRepository _driverRepository;
  DeleteCarWithDriverUseCase(this._carRepository,this._driverRepository);
  call({required carId,required driverId}) async{
    await _driverRepository.deleteDriver(driverId);
    await _carRepository.deleteCar(carId);
  }
}
