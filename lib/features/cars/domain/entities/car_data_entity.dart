import 'package:black_box/features/cars/domain/entities/car_entity.dart';
import 'package:black_box/features/cars/domain/entities/stats_entity.dart';

class CarDataEntity {
  StatsEntity stats;
  List cars;
  CarDataEntity({required this.stats,required this.cars});
}