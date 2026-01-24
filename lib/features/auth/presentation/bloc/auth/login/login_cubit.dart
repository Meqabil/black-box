import 'package:black_box/core/errors/auth_exception.dart';
import 'package:black_box/core/network/network_info.dart';
import 'package:black_box/core/network/network_info_imp.dart';
import 'package:black_box/features/auth/domain/usecases/login_usecase.dart';
import 'package:black_box/features/auth/presentation/bloc/auth/login/login_state.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';

class LoginCubit extends Cubit<LoginState>{
  final LoginAsOwnerUseCase loginAsOwnerUseCase;
  NetworkInfo network = NetworkInfoImpl();
  LoginCubit(this.loginAsOwnerUseCase) : super(LoginInitial());

  Future<void> login(String email,String password) async{
    emit(LoginLoading());
    try{
      final owner = await loginAsOwnerUseCase(email,password);
      emit(LoginSuccess(owner));
    } on DioException catch (e) {
      if(await network.isConnected){
        if (e.response != null) {
          emit(LoginFailure(InvalidCredentialsException().message));
        }
      } else {
        emit(LoginFailure("No Internet connection"));
      }
    }
  }
}
