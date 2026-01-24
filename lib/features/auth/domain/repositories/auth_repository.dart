import 'package:black_box/features/auth/domain/entities/owner_entity.dart';

abstract class AuthRepository{
  Future<OwnerEntity> loginAsOwner({required String email,required String password});
  Future<OwnerEntity> signUpAsOwner({
    required String name,
    required String email,
    required String password,
    required String phoneNumber,
    required String birthDate,
    required String nationalNumber});
  Future<String> sendResetPasswordPin({required String email});
  Future<String> verifyPin({required String email,required String otp});
  Future<String> resetPassword({required String email,required String otp,required String password});
}