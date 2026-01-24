import 'package:black_box/features/auth/domain/entities/owner_entity.dart';
import 'package:black_box/features/auth/domain/repositories/auth_repository.dart';

class LoginAsOwnerUseCase {
  final AuthRepository _authRepository;
  LoginAsOwnerUseCase(this._authRepository);
  Future<OwnerEntity> call(String email,password) async{
    return _authRepository.loginAsOwner(email: email, password: password);
  }
}