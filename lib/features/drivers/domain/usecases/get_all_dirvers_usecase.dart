import '../repositories/driver_repository.dart';

class GetAllDriversUseCase {
  final DriverRepository _repository;
  GetAllDriversUseCase(this._repository);
  Future call() async{
    return _repository.getAllDrivers();
  }
}