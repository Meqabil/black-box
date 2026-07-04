import 'package:black_box/features/cars/domain/repositories/car_repository.dart';

class GetCarsStatsUsecase {
  final CarRepository _carRepository;
  GetCarsStatsUsecase(this._carRepository);
  call(){
    return _carRepository.getCarsStats();
  }
}