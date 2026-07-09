
import 'package:black_box/features/trips/domain/repositories/trip_repository.dart';

class GetLastTripUsecase {
  final TripRepository _repository;
  GetLastTripUsecase(this._repository);
  call(String carId){
    return _repository.showTripsHistory(carId);
  }
}

