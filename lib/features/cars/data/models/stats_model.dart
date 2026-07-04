import 'package:black_box/features/cars/domain/entities/stats_entity.dart';

class StatsModel extends StatsEntity{
  StatsModel({required super.totalVehicles, required super.totalActiveVehicles});
  factory StatsModel.fromJson(Map<String,dynamic> json){
    return StatsModel(totalVehicles: json['total_vehicles'], totalActiveVehicles: json['total_active_vehicles']);
  }
}