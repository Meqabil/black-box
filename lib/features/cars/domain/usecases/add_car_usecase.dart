import 'package:black_box/features/cars/domain/repositories/car_repository.dart';

class AddCarUseCase {
  final CarRepository _carRepository;
  AddCarUseCase(this._carRepository);

  call({
    required String token,
    required int id,
    required String make,
    required String model,
    required String plateNumber,
    required String year}) async{
    return _carRepository.addCar(
      token: token,
      id: id,
      make: make,
      model: model,
      plateNumber:
      plateNumber,
      year: year
    );
  }
}