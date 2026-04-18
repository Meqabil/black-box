import 'dart:io';

import 'package:black_box/core/errors/auth_exception.dart';
import 'package:black_box/core/network/network_info.dart';
import 'package:black_box/core/network/network_info_imp.dart';
import 'package:black_box/features/auth/domain/entities/owner_entity.dart';
import 'package:black_box/features/auth/domain/usecases/signup_usecase.dart';
import 'package:black_box/features/auth/presentation/bloc/auth/signup/signup_state.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';

class SignUpCubit extends Cubit<SignUpState>{
  SignUpUseCase signUpUseCase;
  NetworkInfo network = NetworkInfoImpl();
  SignUpCubit(this.signUpUseCase) : super(InitialSignUp());

  Future<void> signUp({
    required String name,
    required String email,
    required String password,
    File? profileImage}) async{
    try{
      emit(LoadingSignUp());
      OwnerEntity owner = await signUpUseCase(name: name,email: email,password: password,profileImage: profileImage);
      emit(SuccessSignUp(owner));
    } on DioException catch (e){
      if(await network.isConnected){
        if(e.response!.data != null){
          if(e.response!.data['data']['email'] != null){
            emit(FailureSignUp(EmailHasAlreadyTakenException().message));
          }else{
            print("ee ${e.response?.data}");
            emit(FailureSignUp("Something wrong happened !"));
          }
        }
      }else{
        emit((FailureSignUp("No Internet Connection")));
      }
    }
  }
}