import 'package:black_box/features/cars/domain/repositories/car_repository.dart';

class GetAllCarsUseCase {
  final CarRepository _repository;
  GetAllCarsUseCase(this._repository);
  Future call() async{
    return _repository.getAllCars();
  }
}