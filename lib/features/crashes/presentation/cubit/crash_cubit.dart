
import 'package:black_box/core/network/network_info.dart';
import 'package:black_box/features/crash/domain/usecases/delete_crash_usecase.dart';
import 'package:black_box/features/crash/domain/usecases/show_all_crashes_usecase.dart';
import 'package:black_box/features/crash/presentation/cubit/crash_state.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';

class CrashCubit extends Cubit<CrashState>{
  ShowAllCrashesUseCase showAllCrashesUseCase;
  DeleteCrashUseCase deleteCrashUseCase;
  CrashCubit(this.showAllCrashesUseCase,this.deleteCrashUseCase) : super(CrashInitial());
  NetworkInfo network = NetworkInfo();
  showAllCrashes() async{
    emit(CrashLoading());
    try{
      final crashes = await showAllCrashesUseCase();
      emit(CrashSuccess(crashes));
    } on DioException catch (e){
      if(await network.isConnected){
        if (e.response != null) {
          emit(CrashFailure("Failed to load crashes ."));
        }
      } else {
        emit(CrashFailure("No Internet Connection"));
      }
    }
  }

  deleteCrash(int id) async{
    emit(CrashLoading());
    try{
      await deleteCrashUseCase(id);
      emit(CrashDeleted());
    } on DioException catch (e){
      if(await network.isConnected){
        if (e.response != null) {
          emit(CrashFailure("Failed to delete crash"));
        }
      } else {
        emit(CrashFailure("No Internet Connection"));
      }
    }
  }

}