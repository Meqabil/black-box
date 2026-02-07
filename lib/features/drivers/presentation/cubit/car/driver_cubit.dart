import 'package:black_box/features/cars/domain/usecases/add_car_usecase.dart';
import 'package:black_box/features/cars/domain/usecases/get_all_cars_usecase.dart';
import 'package:black_box/features/drivers/domain/usecases/get_all_dirvers_usecase.dart';
import 'package:black_box/features/drivers/presentation/cubit/car/driver_state.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import '../../../../../core/network/network_info.dart';
import '../../../../../core/network/network_info_imp.dart';
import '../../../domain/usecases/add_driver_usecase.dart';

class DriverCubit extends Cubit<DriverState>{
  GetAllDriversUseCase getAllDriversUseCase;
  AddDriverUseCase addDriverUseCase;
  NetworkInfo network = NetworkInfoImpl();
  DriverCubit(this.getAllDriversUseCase,this.addDriverUseCase) : super(DriverInitial());


  getAllDrivers() async {
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

  addDriver({
    required String token,
    required String name,
    required String email,
    required String password,
    required String nationalNumber,
    required String licenseNumber,
    required String phone}) async{
    emit(DriverLoading());
    try{
      final drivers = await getAllDriversUseCase();
      final driver = await addDriverUseCase(
        token: token,
        name: name,
        phone: phone,
        email: email,
        password: password,
        licenseNumber: licenseNumber,
        nationalNumber: nationalNumber,
      );
      drivers.add(driver);
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
}