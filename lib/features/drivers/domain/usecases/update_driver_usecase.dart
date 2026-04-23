import 'package:black_box/features/drivers/domain/repositories/driver_repository.dart';

class UpdateDriverUseCase{
  final DriverRepository _driverRepository;
  UpdateDriverUseCase(this._driverRepository);

  call({
    required int id,
    required String name,
    required String email,
    required String phone,
    required String nationalNumber,
    required String licenseNumber,
  }) {
    _driverRepository.updateDriver(id: id, name: name,);
  }
}