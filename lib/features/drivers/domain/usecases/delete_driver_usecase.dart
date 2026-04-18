import 'package:black_box/features/drivers/domain/repositories/driver_repository.dart';

class DeleteDriverUseCase {
  final DriverRepository _driverRepository;
  DeleteDriverUseCase(this._driverRepository);

  call(int id){
    _driverRepository.deleteDriver(id);
  }
}