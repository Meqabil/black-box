
import 'dart:io';

import 'package:black_box/features/auth/data/datasources/auth_datasource.dart';
import 'package:black_box/features/auth/data/datasources/owner_datasource.dart';
import 'package:black_box/features/auth/domain/entities/owner_entity.dart';
import 'package:black_box/features/auth/domain/repositories/auth_repository.dart';


class AuthRepositoryImpl extends AuthRepository{
  AuthDatasource authDatasource;
  OwnerDataSource ownerDataSource;
  AuthRepositoryImpl(this.authDatasource,this.ownerDataSource);
  @override
  Future<OwnerEntity> loginAsOwner({required String email, required String password}) async {
    return authDatasource.login(email, password);
  }

  @override
  Future<OwnerEntity> signUpAsOwner({
    required String name,
    required String email,
    required String password,
    File? profileImage}) async{
    return authDatasource.signUp(name: name, email: email, password: password,profileImage: profileImage);
  }
  @override
  Future<String> sendResetPasswordPin({required String email}){
    return authDatasource.sendResetPasswordPin(email);
  }

  @override
  Future<String> resetPassword({required String email,required String otp,required String password}) {
    return authDatasource.resetPassword(email: email, otp: otp, password: password);
  }

  @override
  Future<String> verifyPin({required String email,required String otp}) {
    return authDatasource.verifyPin(email, otp);
  }


  @override
  Future<OwnerEntity> showOneOwner({required int id}) {
    return ownerDataSource.showOneOwner(id);
  }

  @override
  Future<void> updateOwner({required int id,required String name,File? image}) {
    return ownerDataSource.updateOwner(id: id,name: name,image: image);
  }

  @override
  Future<void> deleteOwner({required int id})  {
    return ownerDataSource.deleteOwner(id);
  }
}