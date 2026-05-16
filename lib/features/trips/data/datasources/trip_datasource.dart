import 'package:black_box/core/constants/links.dart';
import 'package:black_box/core/network/dio_helper.dart';
import 'package:black_box/features/trips/data/models/trip_model.dart';
import 'package:black_box/features/trips/domain/entities/trip_entity.dart';

class TripDataSource {
  Future<TripEntity?> showTripDetail(int id) async{
    final res = await DioHelper.dio.get("${AppLink.tripDetail}$id");
    final status = res.data['status'];
    final data = res.data['data']['trip'];
    if(status == 'success'){
      final trip =  TripModel.fromJson(data);
      return trip;
    }
    return null;
  }

  Future<List> showTripsHistory() async{
    List trips = [];
    final res = await DioHelper.dio.get(AppLink.tripsHistory);
    final status = res.data['status'];
    final data = res.data['data']['trips'];
    if(status == 'success'){
      print(data[1]);
      trips = data.map((trip) => TripModel.fromJson(trip)).toList();
      return trips;
    }
    return [];
  }
}