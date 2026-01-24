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
    required String phoneNumber,
    required String birthDate,
    required String nationalNumber}) async{
    try{
      emit(InitialSignUp());
      OwnerEntity owner = await signUpUseCase(name: name,email: email,password: password,phoneNumber: phoneNumber,birthDate: birthDate,nationalNumber: nationalNumber);
      emit(SuccessSignUp(owner));
    } on DioException catch (e){
      if(await network.isConnected){
        if(e.response!.data != null){
          if(e.response!.data['data']['email'] != null){
            emit(FailureSignUp(EmailHasAlreadyTakenException().message));
          } else if (e.response!.data['data']['phone_number'] != null){
            emit(FailureSignUp(PhoneHasAlreadyTakenException().message));
          } else if (e.response!.data['data']['national_number'] != null){
            emit(FailureSignUp(NationalNumberHasAlreadyTakenException().message));
          }
        }
      }else{
        emit((FailureSignUp("No Internet Connection")));
      }
    }
  }
}