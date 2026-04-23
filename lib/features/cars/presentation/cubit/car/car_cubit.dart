
import 'dart:io';

import 'package:black_box/features/cars/domain/usecases/add_car_usecase.dart';
import 'package:black_box/features/cars/domain/usecases/add_car_with_driver_usecase.dart';
import 'package:black_box/features/cars/domain/usecases/delete_car_usecase.dart';
import 'package:black_box/features/cars/domain/usecases/delete_car_with_driver_usecase.dart';
import 'package:black_box/features/cars/domain/usecases/get_all_cars_usecase.dart';
import 'package:black_box/features/cars/domain/usecases/update_car_usecase.dart';
import 'package:black_box/features/cars/presentation/cubit/car/car_state.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import '../../../../../core/network/network_info.dart';
import '../../../../../core/network/network_info_imp.dart';

class CarCubit extends Cubit<CarState>{
  GetAllCarsUseCase getAllCarsUseCase;
  AddCarUseCase addCarUseCase;
  AddCarWithDriverUseCase addCarWithDriverUseCase;
  DeleteCarUseCase deleteCarUseCase;
  DeleteCarWithDriverUseCase deleteCarWithDriverUseCase;
  UpdateCarUseCase updateCarUseCase;
  NetworkInfo network = NetworkInfoImpl();
  CarCubit(this.getAllCarsUseCase,this.addCarUseCase,this.addCarWithDriverUseCase,this.deleteCarUseCase,this.deleteCarWithDriverUseCase,this.updateCarUseCase) : super(CarInitial());

  getAllCars() async {
    emit(CarLoading());
    try {
      final cars = await getAllCarsUseCase();
      emit(CarSuccess(cars));
    } on DioException catch (e) {
      if (await network.isConnected) {
        if (e.response != null) {
          emit(CarFailure("${e.response}"));
        }
      } else {
        emit(CarFailure("No Internet connection"));
      }
    }
  }

  Future<void> addCar({
    required String token,
    required int id,
    required String name,
    required String vClass,
    required String plateNumber,
  }) async{
    emit(CarLoading());
    List cars = await getAllCarsUseCase();
    try{
      await addCarUseCase(
        id: id,
        name: name,
        plateNumber: plateNumber,
        vClass: vClass,
      );
      emit(CarAdded());
      cars = await getAllCarsUseCase();
      emit(CarSuccess(cars));
    }
    on DioException catch (e) {
      if (await network.isConnected) {
        if (e.response != null) {
          emit(CarWarning("${e.response!.data['data']['driver_id'][0]}",cars));
        }
      } else {
        emit(CarFailure("No Internet connection"));
      }
    }
  }

  Future<void> addCarWithDriver({
    required String carName,
    required String driverName,
    required String vClass,
    required String plateNumber,
  }) async {
    emit(CarLoading());
    List cars = await getAllCarsUseCase();
    try{
      await addCarWithDriverUseCase(
        carName: carName,
        driverName: driverName,
        plateNumber: plateNumber,
        vClass: vClass,
      );
      emit(CarAdded());
      cars = await getAllCarsUseCase();
      emit(CarSuccess(cars));
    }
    on DioException catch (e) {
      if (await network.isConnected) {
          print(e.response);
        if (e.response != null) {
          print(e.response?.data);
          emit(CarWarning("${e.response!.data['data']['driver_id'][0]}",cars));
        }
      } else {
        emit(CarFailure("No Internet connection"));
      }
    }
}


  deleteCar(int id)async{
    emit(CarLoading());
    final cars = await getAllCarsUseCase();
    try{
      await deleteCar(id);
      final cars = await getAllCarsUseCase();
      emit(CarDeleted());
      emit(CarSuccess(cars));
    } on DioException catch (e) {
      if (await network.isConnected) {
        if (e.response != null) {
          emit(CarWarning("${e.response!.data['message']}",cars));
        }
      } else {
        emit(CarFailure("No Internet connection"));
      }
    }
  }

  deleteCarWithDriver({required int carId,required int driverId})async{
    emit(CarLoading());
    final cars = await getAllCarsUseCase();
    try{
      await deleteCarWithDriverUseCase(carId: carId, driverId: driverId);
      final cars = await getAllCarsUseCase();
      emit(CarDeleted());
      emit(CarSuccess(cars));
    } on DioException catch (e) {
      if (await network.isConnected) {
        if (e.response != null) {
          emit(CarWarning("${e.response!.data['message']}",cars));
        }
      } else {
        emit(CarFailure("No Internet connection"));
      }
    }
  }


  updateCar({
    File? image,
    required int carId,
    required String driverId,
    required String name,
    required String vClass,
    required String plateNumber,
  }) async{
    emit(CarLoading());
    try{
      await updateCarUseCase(carId: carId, driverId: driverId,name: name,vClass:vClass ,plateNumber: plateNumber,image: image);
      emit(CarUpdated());
    }on DioException catch (e) {
      if (await network.isConnected) {
        if (e.response != null) {
          emit(CarFailure("${e.response!}"));
        }
      } else {
        emit(CarFailure("No Internet connection",));
      }
    }
  }
}