import 'package:black_box/features/cars/domain/entities/car_data_entity.dart';

class CarDataModel extends CarDataEntity{
  CarDataModel({required super.stats, required super.cars});

  factory CarDataModel.fromJson(Map<String,dynamic> json){
    return CarDataModel(stats: json['stats'], cars: json['vehicles']);
  }

}