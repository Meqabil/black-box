import 'package:black_box/features/cars/domain/repositories/car_repository.dart';

class AddCarUseCase {
  final CarRepository _carRepository;
  AddCarUseCase(this._carRepository);

  call({
    required String token,
    required int id,
    required String name,
    required String vClass,
    required String plateNumber,
  }) async{
    return _carRepository.addCar(
      token: token,
      id: id,
      name: name,
      vClass: vClass,
      plateNumber:
      plateNumber,
    );
  }
}