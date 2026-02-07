import 'package:black_box/features/cars/domain/entities/car_entity.dart';

sealed class CarState{}

class CarInitial extends CarState{}
class CarLoading extends CarState{}
class CarFailure extends CarState{
  String message;
  CarFailure(this.message);
}
class CarSuccess extends CarState{
  List carsList;
  CarSuccess(this.carsList);
}
