import 'package:black_box/features/cars/domain/repositories/car_repository.dart';

class DeleteCarUseCase{
  final CarRepository _carRepository;
  DeleteCarUseCase(this._carRepository);
  call(int id){
    _carRepository.deleteCar(id);
  }
}