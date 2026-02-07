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
      final response = await dio.post("$mainAPILink/auth/login",data: formData);
      final status = response.data['status'];
      if(status == "success"){
        String token = response.data['data']['token'];
        pref!.setString("token", token);
        final owner = OwnerModel.fromJson(response.data['data']['user']);
        return owner;
      }
      return OwnerEntity(id: 0, name: "Unknown", email: "Unknown", role: "not detected", nationalNumber: "0", birthDate: "0", phoneNumber: '0' , createdAt: '0', updatedAt: '0',profileImage: '');
  }

  Future<OwnerEntity> signUp({
    required String name,
    required String email,
    required String password,
    required String phoneNumber,
    required String birthDate,
    required String nationalNumber,
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
        "phone_number": phoneNumber,
        "national_number": nationalNumber,
        "birth_date": birthDate,
        "profile_image" : multipartFile
      }
    );
    final response = await dio.post("$mainAPILink/auth/register",data: formData);
    final status = response.data['status'];
    if(status== 'success'){
      String token = response.data['data']['token'];
      pref!.setString("token", token);
      final owner = OwnerModel.fromJson(response.data['data']['user']);
      return owner;
    }
    return OwnerEntity(id: 0, name: "Unknown", email: "Unknown", role: "not detected", nationalNumber: "0", birthDate: "0", phoneNumber: '0' , createdAt: '0', updatedAt: '0', profileImage: '');
  }

  Future<String> sendResetPasswordPin (String email) async{
    FormData formData = FormData.fromMap({
      "email": email
    });
    final response = await dio.post("$mainAPILink/forget-password",data: formData);
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
    final response = await dio.post("$mainAPILink/verify-otp",data: formData);
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
    final response = await dio.post("$mainAPILink/reset-password",data: formData);
    final status = response.data['status'];
    if(status == "success"){
      return "Password has been changed ✔";
    }
    return "";
  }
}

