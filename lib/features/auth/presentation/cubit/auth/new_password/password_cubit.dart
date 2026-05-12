import 'package:black_box/core/errors/auth_exception.dart';
import 'package:black_box/core/network/network_info.dart';
import 'package:black_box/core/network/network_info_imp.dart';
import 'package:black_box/features/auth/domain/usecases/change_password_usecase.dart';
import 'package:black_box/features/auth/domain/usecases/reset_password_usecase.dart';
import 'package:black_box/features/auth/domain/usecases/send_reset_password.dart';
import 'package:black_box/features/auth/domain/usecases/verify_pin_usecase.dart';
import 'package:black_box/features/auth/presentation/cubit/auth/new_password/password_state.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';

class PasswordCubit extends Cubit<PasswordState>{
  final NetworkInfo _network = NetworkInfoImpl();
  final SendResetPasswordUseCase _sendResetPasswordUseCase;
  final VerifyPinUseCase _verifyPinUseCase;
  final ResetPasswordUseCase _resetPasswordUseCase;
  final ChangePasswordUseCase _changePasswordUseCase;
  PasswordCubit(this._sendResetPasswordUseCase, this._verifyPinUseCase, this._resetPasswordUseCase,this._changePasswordUseCase) : super(InitialPassword());

  sendResetPassword({required String email}) async{
    emit(LoadingPassword());
    try{
      String msg = await _sendResetPasswordUseCase(email: email);
      emit(SuccessPassword(msg));
    } on DioException catch (e){
      if(await _network.isConnected){
        if(e.response!.data != null){
          emit(FailurePassword(InvalidEmailException().message));
        }
      }else{
        emit(FailurePassword("No Internet Connection "));
      }
    }
  }
  verifyPin({required String email,required String otp}) async{
    emit(LoadingPassword());
    try{
      String msg = await _verifyPinUseCase(email: email,otp: otp);
      emit(SuccessPassword(msg));
    } on DioException catch (e){
      if(await _network.isConnected){
        if(e.response!.data != null){
          emit(FailurePassword(InvalidEmailException().message));
        }
      }else{
        emit(FailurePassword("No Internet Connection "));
      }
    }
  }

  resetPassword({required String email,required String otp,required String password}) async {
    emit(LoadingPassword());
    try{
      String msg = await _resetPasswordUseCase(email: email,otp: otp,password: password);
      emit(SuccessPassword(msg));
    } on DioException catch (e){
      if(await _network.isConnected){
        if(e.response!.data != null){
          emit(FailurePassword(InvalidEmailException().message));
        }
      }else{
        emit(FailurePassword("No Internet Connection "));
      }
    }
  }


  changePassword({required String currentPassword,required String newPassword}) async{
    emit(LoadingPassword());
    try{
      await _changePasswordUseCase(newPassword: newPassword,currentPassword: currentPassword);
      emit(SuccessToChangePassword());
    } on DioException catch (e){
      if(await _network.isConnected){
        if(e.response!.data != null){
          emit(FailedToChangePassword("failed"));
        }
      }else{
        emit(FailedToChangePassword("No Internet Connection "));
      }
    }
  }
}












