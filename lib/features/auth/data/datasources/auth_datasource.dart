import 'dart:io';
import 'package:black_box/core/constants/global.dart';
import 'package:black_box/features/auth/data/models/owner_model.dart';
import 'package:black_box/features/auth/domain/entities/owner_entity.dart';
import 'package:dio/dio.dart';
import '../../../../core/constants/links.dart';

class AuthDatasource{
  final Dio dio;
  AuthDatasource(this.dio);

  Future<OwnerEntity> login(String email,String password) async{
      FormData formData = FormData.fromMap({"email": email,"password":password});
      final response = await dio.post(AppLink.login,data: formData);
      final status = response.data['status'];
      final token = response.data['data']["token"];
      if(status == "success"){
        pref!.setString("token", token);
        final owner = OwnerModel.fromJson(response.data['data']['user']);
        return owner;
      }
      return OwnerEntity(id: 0, name: "Unknown", email: "Unknown", role: "not detected",driversCount: "0",vehiclesCount: "0",createdAt: '0',updatedAt: '0',profileImage: '');
  }

  Future<OwnerEntity> signUp({
    required String name,
    required String email,
    required String password,
    File? profileImage}) async{
    MultipartFile? multipartFile;
    if(profileImage != null){
      multipartFile = await MultipartFile.fromFile(
        filename: profileImage.path.split('/').last,
        profileImage.path,
      );
    }
    FormData formData = FormData.fromMap(
      {
        "name": name,
        "email": email,
        "password": password,
        "password_confirmation": password,
        "profile_image" : multipartFile
      }
    );
    final response = await dio.post(AppLink.register,data: formData);
    final status = response.data['status'];
    final token = response.data['data']['token'];
    print(token);
    if(status== 'success'){
      pref!.setString("token", token);
      final owner = OwnerModel.fromJson(response.data['data']['user']);
      return owner;
    }
    return OwnerEntity(id: 0, name: "Unknown", email: "Unknown", role: "not detected", driversCount: "0", vehiclesCount: '0' , createdAt: '0', updatedAt: '0', profileImage: '');
  }

  Future<String> sendResetPasswordPin (String email) async{
    FormData formData = FormData.fromMap({
      "email": email
    });
    final response = await dio.post(AppLink.forgetPassword,data: formData);
    final status = response.data['status'];
    if(status == "success"){
      return "Verification code has been sent ✔";
    }
    return "";
  }

  Future<String> verifyPin(String email,String otp) async{
    FormData formData = FormData.fromMap({
      "email": email,
      "otp": otp
    });
    final response = await dio.post(AppLink.verifyOtp,data: formData);
    final status = response.data['status'];
    if(status == "success"){
      return "Verification code has been sent ✔";
    }
    return "";
  }

  Future<String> resetPassword({required String email, required String otp, required String password}) async{
    FormData formData = FormData.fromMap({
      "email": email,
      "otp": otp,
      "password": password,
      "password_confirmation": password
    });
    final response = await dio.post(AppLink.resetPassword,data: formData);
    final status = response.data['status'];
    if(status == "success"){
      return "Password has been changed ✔";
    }
    return "";
  }
}

