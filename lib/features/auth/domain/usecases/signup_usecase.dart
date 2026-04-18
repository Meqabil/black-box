
import 'dart:io';
import 'package:black_box/features/auth/domain/entities/owner_entity.dart';
import 'package:black_box/features/auth/domain/repositories/auth_repository.dart';

class SignUpUseCase {
  final AuthRepository _authRepository;
  SignUpUseCase(this._authRepository);

  Future<OwnerEntity> call({
    required String name,
    required String email,
    required String password,
    File? profileImage
}) async{
    return _authRepository.signUpAsOwner(name: name, email: email, password: password,profileImage: profileImage);
  }
}