
import 'package:black_box/features/drivers/domain/usecases/delete_driver_usecase.dart';
import 'package:black_box/features/drivers/domain/usecases/get_all_dirvers_usecase.dart';
import 'package:black_box/features/drivers/domain/usecases/update_driver_usecase.dart';
import 'package:black_box/features/drivers/presentation/cubit/driver/driver_state.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import '../../../../../core/network/network_info.dart';
import '../../../../../core/network/network_info_imp.dart';
import '../../../domain/usecases/add_driver_usecase.dart';

class DriverCubit extends Cubit<DriverState>{
  GetAllDriversUseCase getAllDriversUseCase;
  AddDriverUseCase addDriverUseCase;
  UpdateDriverUseCase updateDriverUseCase;
  DeleteDriverUseCase deleteDriverUseCase;
  NetworkInfo network = NetworkInfoImpl();
  DriverCubit(this.getAllDriversUseCase,this.addDriverUseCase,this.updateDriverUseCase,this.deleteDriverUseCase) : super(DriverInitial());



  addDriver({
    required String name,
  }) async{
    emit(DriverLoading());
    try{
      await addDriverUseCase(
        name: name,
      );
      emit(DriverAdded());
      final drivers = await getAllDriversUseCase();
      emit(DriverSuccess(drivers));
    }
    on DioException catch (e) {
      if (await network.isConnected) {
        if (e.response != null) {
          emit(DriverFailure("${e.response}"));
        }
      } else {
        emit(DriverFailure("No Internet connection"));
      }
    }
  }


  updateDriver({
    required int id,
    required String name,
    required String email,
    required String phone,
    required String nationalNumber,
    required String licenseNumber,
  }) async{
    emit(DriverLoading());
    try{
      await updateDriverUseCase(id:id,name: name,email: email,phone: phone,licenseNumber: licenseNumber,nationalNumber: nationalNumber);
      emit(DriverUpdated());
    }on DioException catch (e) {
      if (await network.isConnected) {
        if (e.response != null) {
          emit(DriverFailure("${e.response}"));
        }
      } else {
        emit(DriverFailure("No Internet connection"));
      }
    }
  }

  deleteDriver(int id) async{
    emit(DriverLoading());
    try{
      await deleteDriverUseCase(id);
      emit(DriverDeleted());
    } on DioException catch (e) {
      if (await network.isConnected) {
        if (e.response != null) {
          emit(DriverFailure("${e.response}"));
        }
      } else {
        emit(DriverFailure("No Internet connection"));
      }
    }
  }

  Future<void> getAllDrivers() async {
    emit(DriverLoading());
    try {
      final drivers = await getAllDriversUseCase();
      emit(DriverSuccess(drivers));
    } on DioException catch (e) {
      if (await network.isConnected) {
        if (e.response != null) {
          emit(DriverFailure("${e.response}"));
        }
      } else {
        emit(DriverFailure("No Internet connection"));
      }
    }
  }
}
