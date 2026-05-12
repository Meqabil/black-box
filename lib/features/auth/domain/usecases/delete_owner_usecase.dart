import 'package:black_box/features/auth/domain/repositories/auth_repository.dart';

class DeleteOwnerUseCase{
  final AuthRepository _authRepository;
  DeleteOwnerUseCase(this._authRepository);
  Future<void> call(int id){
    return _authRepository.deleteOwner(id: id);
  }
}