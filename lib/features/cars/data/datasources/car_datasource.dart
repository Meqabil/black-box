
import 'package:black_box/core/constants/global.dart';
import 'package:black_box/core/constants/links.dart';
import 'package:black_box/features/cars/data/models/car_model.dart';
import 'package:black_box/features/cars/domain/entities/car_entity.dart';
import 'package:dio/dio.dart';

class CarDataSource{

  Future<CarEntity> addCar({
    required String token,
    required int id,
    required String make,
    required String model,
    required String plateNumber,
    required String year}) async{
    FormData formData = FormData.fromMap({
      "driver_id": id,
      "make": make,
      "model": model,
      "plate_number": plateNumber,
      "year": year,
    });
    final response = await dio.post(
      "$mainAPILink/vehicles/add",
      data: formData,
      options: Options(
        contentType: "application/json",
        headers: {
          "Authorization": "Bearer $token"
        }
      )
    );
    final status = response.data['data'];
    if(status == "success "){

      return CarModel.fromJson(response.data['data']);
    }
    return CarModel(id: 0, ownerId: 'Unknown', plateNumber: 'Unknown', make: 'Unknown', model: 'Unknown', year: 'Unknown', driverId: 'Unknown', createdAt: 'Unknown', updatedAt: 'Unknown');
  }


  Future<List> getAllCars() async{
    List cars = [];
    final response = await dio.get(
        '$mainAPILink/vehicles/show-all',
      options: Options(
        contentType: "application/json",
        headers: {
          "Authorization": "Bearer $token",
        }
      )
    );
    final status = response.data['status'];
    if(status == "success"){
      cars = response.data['data'].map(
          (car) => CarModel.fromJson(car)
      ).toList();
      return cars;
    }
    return [];
  }
}