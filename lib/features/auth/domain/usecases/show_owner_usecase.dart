
import 'package:black_box/features/auth/domain/entities/owner_entity.dart';
import 'package:black_box/features/auth/domain/repositories/auth_repository.dart';

class ShowOwnerUseCase{
  final AuthRepository _authRepository;
  ShowOwnerUseCase(this._authRepository);
  Future<OwnerEntity> call(int id){
    return _authRepository.showOneOwner(id: id);
  }
}
