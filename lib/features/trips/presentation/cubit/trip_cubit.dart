
import 'package:black_box/core/network/network_info.dart';
import 'package:black_box/features/trips/domain/entities/trip_entity.dart';
import 'package:black_box/features/trips/domain/usecases/show_trip_detail_usecase.dart';
import 'package:black_box/features/trips/domain/usecases/show_trips_history_usecase.dart';
import 'package:black_box/features/trips/presentation/cubit/trip_state.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';

class TripCubit extends Cubit<TripState>{
  ShowTripDetailUseCase showTripDetailUseCase;
  ShowTripsHistoryUseCase showTripsHistoryUseCase;
  NetworkInfo network = NetworkInfo();
  TripCubit(this.showTripDetailUseCase,this.showTripsHistoryUseCase): super(TripInitial());

  showTripDetail(int id) async{
    emit(TripLoading());
    try{
      final TripEntity trip = await showTripDetailUseCase(id);
      emit(TripDetailsSuccess(trip));
    } on DioException catch (e) {
      if(await network.isConnected){
        if (e.response != null) {
          emit(TripFailure(e.response.toString()));
        }
      } else {
        emit(TripFailure("No Internet connection"));
      }
    }
  }

  showTripsHistory() async{
    emit(TripLoading());
    try{
      final List trips = await showTripsHistoryUseCase();
      emit(TripsHistorySuccess(trips));
    } on DioException catch (e) {
      if(await network.isConnected){
        if (e.response != null) {
          emit(TripFailure(e.response.toString()));
        }
      } else {
        emit(TripFailure("No Internet connection"));
      }
    }
  }
}