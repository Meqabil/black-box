
import 'package:black_box/features/auth/domain/repositories/auth_repository.dart';

class VerifyPinUseCase {
  final AuthRepository _authRepository;
  VerifyPinUseCase(this._authRepository);
  Future<String> call({required String email,required String otp}){
    return _authRepository.verifyPin(email: email, otp: otp);
  }
}