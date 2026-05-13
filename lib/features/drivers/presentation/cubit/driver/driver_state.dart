
import 'package:black_box/features/drivers/domain/entities/driver_entity.dart';

sealed class DriverState{}

class DriverInitial extends DriverState{}
class DriverLoading extends DriverState{}

class DriverAdded extends DriverState{}
class DriverUpdated extends DriverState{}
class DriverDeleted extends DriverState{}
class DriverFailure extends DriverState{
  String message;
  DriverFailure(this.message);
}

class OneDriverSuccess extends DriverState{
  DriverEntity driver;
  OneDriverSuccess(this.driver);
}
class DriverSuccess extends DriverState{
  DriverEntity driver;
  DriverSuccess(this.driver);
}

class DriverScoreSuccess extends DriverState{
  int score;
  DriverScoreSuccess(this.score);
}

class DriversScoreSuccess extends DriverState{
  double score;
  DriversScoreSuccess(this.score);
}

