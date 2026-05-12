import '../repositories/driver_repository.dart';

class ShowOneDriverUseCase {
  final DriverRepository _repository;
  ShowOneDriverUseCase(this._repository);
  Future call(int id) async{
    return _repository.showOneDriver(id);
  }
}