import 'package:black_box/features/cars/domain/entities/stats_entity.dart';

sealed class CarState{}

class CarInitial extends CarState{}
class CarLoading extends CarState{}
class CarAdded extends CarState{}
class CarUpdated extends CarState{}
class CarDeleted extends CarState{}
class CarWarning extends CarState{
  String message;
  List carsList;
  CarWarning(this.message,this.carsList);
}
class CarFailure extends CarState{
  String message;
  CarFailure(this.message);
}
class CarSuccess extends CarState{
  List carsList;
  StatsEntity stats;
  CarSuccess(this.carsList,this.stats);
}
