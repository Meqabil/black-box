
sealed class DriverState{}

class DriverInitial extends DriverState{}
class DriverLoading extends DriverState{}

class DriverUpdated extends DriverState{}
class DriverDeleted extends DriverState{}
class DriverFailure extends DriverState{
  String message;
  DriverFailure(this.message);
}
class DriverSuccess extends DriverState{
  List driversList;
  DriverSuccess(this.driversList);
}
