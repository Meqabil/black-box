
import 'package:black_box/features/drivers/data/datasources/driver_datasource.dart';

class GetAllDriversScoreUseCase {
  final DriverDataSource _dataSource;
  GetAllDriversScoreUseCase(this._dataSource);
  call() {
    return _dataSource.getAllDriversScore();
  }
}