import 'package:black_box/features/trips/domain/entities/trip_entity.dart';

sealed class TripState{}

class TripInitial extends TripState{}
class TripLoading extends TripState{}

class TripDetailsSuccess extends TripState{
  final TripEntity trip;
  TripDetailsSuccess(this.trip);
}

class TripFailure extends TripState{
  final String message;
  TripFailure(this.message);
}

class TripsHistorySuccess extends TripState{
  final List trips;
  TripsHistorySuccess(this.trips);
}


