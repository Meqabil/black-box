import '../repositories/driver_repository.dart';

class AddDriverUseCase {
  final DriverRepository _driverRepository;
  AddDriverUseCase(this._driverRepository);

  call({
    required String token,
    required String name,
    required String email,
    required String password,
    required String nationalNumber,
    required String licenseNumber,
    required String phone}) async{
    return _driverRepository.addDriver(
      token: token,
      name: name,
      email: email,
      password: password,
      nationalNumber: nationalNumber,
      licenseNumber: licenseNumber,
      phone: phone
    );
  }
}