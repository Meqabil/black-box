
import 'package:black_box/features/auth/data/datasources/auth_datasource.dart';
import 'package:black_box/features/auth/domain/entities/owner_entity.dart';
import 'package:black_box/features/auth/domain/repositories/auth_repository.dart';


class AuthRepositoryImpl extends AuthRepository{
  AuthDatasource authDatasource;
  AuthRepositoryImpl(this.authDatasource);
  @override
  Future<OwnerEntity> loginAsOwner({required String email, required String password}) async {
    return authDatasource.login(email, password);
  }

  @override
  Future<OwnerEntity> signUpAsOwner({
    required String name,
    required String email,
    required String password,
    required String phoneNumber,
    required String birthDate,
    required String nationalNumber}) async{
    return authDatasource.signUp(name: name, email: email, password: password, phoneNumber: phoneNumber, birthDate: birthDate, nationalNumber: nationalNumber);
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
}