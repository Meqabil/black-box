import 'dart:io';
import 'package:black_box/features/auth/domain/entities/owner_entity.dart';
import 'package:black_box/features/auth/domain/repositories/auth_repository.dart';

class UpdateOwnerUseCase{
  final AuthRepository _authRepository;
  UpdateOwnerUseCase(this._authRepository);
  Future<void> call({required int id,required String name,File? image}){
    return _authRepository.updateOwner(id: id,name: name,image: image);
  }
}