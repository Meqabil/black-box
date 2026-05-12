
import '../repositories/auth_repository.dart';

class ChangePasswordUseCase{
  final AuthRepository _authRepository;
  ChangePasswordUseCase(this._authRepository);
  Future<void> call({required String currentPassword,required String newPassword}){
    return _authRepository.changePassword(currentPassword: currentPassword, newPassword: newPassword);
  }
}