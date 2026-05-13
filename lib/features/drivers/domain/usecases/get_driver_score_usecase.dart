import 'package:black_box/features/drivers/data/datasources/driver_datasource.dart';

class GetDriverScoreUseCase{
  final DriverDataSource _driverDataSource;
  GetDriverScoreUseCase(this._driverDataSource);
  call(int id){
    return _driverDataSource.getDriverScore(id);
  }
}