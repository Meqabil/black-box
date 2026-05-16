import 'package:black_box/features/trips/domain/repositories/trip_repository.dart';

class ShowTripsHistoryUseCase{
  final TripRepository _repository;
  ShowTripsHistoryUseCase(this._repository);
  call() {
    return _repository.showTripsHistory();
  }
}
