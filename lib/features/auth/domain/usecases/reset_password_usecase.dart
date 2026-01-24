
import 'package:black_box/features/auth/domain/repositories/auth_repository.dart';

class ResetPasswordUseCase {
  final AuthRepository _authRepository;
  ResetPasswordUseCase(this._authRepository);
  Future<String> call({required String email,required String otp,required String password})  {
    return _authRepository.resetPassword(email: email, otp: otp, password: password);
  }
}