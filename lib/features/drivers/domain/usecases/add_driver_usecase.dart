import '../repositories/driver_repository.dart';

class AddDriverUseCase {
  final DriverRepository _driverRepository;
  AddDriverUseCase(this._driverRepository);

  call({
    required String name,
  }) async{
    return _driverRepository.addDriver(
      name: name,
    );
  }
}