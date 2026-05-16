import 'package:black_box/features/trips/data/datasources/trip_datasource.dart';
import 'package:black_box/features/trips/domain/repositories/trip_repository.dart';

class TripRepositoryImpl extends TripRepository{
  final TripDataSource _dataSource;
  TripRepositoryImpl(this._dataSource);
  @override
  showTripDetail(int id) {
    return _dataSource.showTripDetail(id);
  }

  @override
  showTripsHistory() {
    return _dataSource.showTripsHistory();
  }
}