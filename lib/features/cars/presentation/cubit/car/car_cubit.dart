import 'package:black_box/features/cars/domain/entities/car_entity.dart';
import 'package:black_box/features/cars/domain/usecases/add_car_usecase.dart';
import 'package:black_box/features/cars/domain/usecases/get_all_cars_usecase.dart';
import 'package:black_box/features/cars/presentation/cubit/car/car_state.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';

import '../../../../../core/network/network_info.dart';
import '../../../../../core/network/network_info_imp.dart';

class CarCubit extends Cubit<CarState>{
  GetAllCarsUseCase getAllCarsUseCase;
  AddCarUseCase addCarUseCase;
  NetworkInfo network = NetworkInfoImpl();
  CarCubit(this.getAllCarsUseCase,this.addCarUseCase) : super(CarInitial());

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

  addCar({
    required String token,
    required int id,
    required String make,
    required String model,
    required String plateNumber,
    required String year}) async{
    emit(CarLoading());
    try{
      final cars = await getAllCarsUseCase();
      final car = await addCarUseCase(
        token: token,
        id: id,
        model: model,
        make: make,
        plateNumber: plateNumber,
        year: year,
      );
      cars.add(car);
      emit(CarSuccess(cars));
    }
    on DioException catch (e) {
      if (await network.isConnected) {
        if (e.response != null) {
          emit(CarFailure("${e.response}"));
        }
      } else {
        emit(CarFailure("No Internet connection"));
      }
    }
  }
}