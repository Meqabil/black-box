import 'package:black_box/features/trips/domain/repositories/trip_repository.dart';

class ShowTripDetailUseCase{
  final TripRepository _repository;
  ShowTripDetailUseCase(this._repository);
  call(int id){
    return _repository.showTripDetail(id);
  }
}

