
import 'package:black_box/features/auth/domain/repositories/auth_repository.dart';

class SendResetPasswordUseCase {
  final AuthRepository _authRepository;
  SendResetPasswordUseCase(this._authRepository);
  Future<String> call({required String email}) async{
    return _authRepository.sendResetPasswordPin(email: email);
  }
}