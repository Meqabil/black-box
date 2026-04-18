
import 'dart:io';

import 'package:black_box/core/constants/global.dart';
import 'package:black_box/core/constants/links.dart';
import 'package:black_box/features/cars/data/models/car_model.dart';
import 'package:black_box/features/cars/domain/entities/car_entity.dart';
import 'package:dio/dio.dart';

class CarDataSource{

  Future<CarEntity> addCar({
    File? image,
    required String token,
    required int id,
    required String name,
    required String vClass,
    required String plateNumber,
  }) async{
    FormData formData = FormData.fromMap({
      "driver_id": id,
      "vehicle_name": name,
      "vehicle_class": vClass,
      "plate_number": plateNumber,
      if (image != null)
        'image': await MultipartFile.fromFile(
          image.path,
          filename: image.path.split('/').last,
        )
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
    return CarModel(id: 0, ownerId: 'Unknown', plateNumber: 'Unknown', name: 'Unknown', vClass: 'Unknown', driverId: 'Unknown', createdAt: 'Unknown', updatedAt: 'Unknown');
  }


  Future<List> getAllCars() async{
    List cars = [];
    final response = await dio.get(
        '$mainAPILink/vehicles/show-all',
      options: Options(
        contentType: "application/json",
        headers: {
          "Authorization": "Bearer 12|zYTacBzNLmW3mSIoVYJrgDB4sq0spO1MiE6c2e9sa0dac396",
        }
      )
    );
    final status = response.data['status'];
    if(status == "success"){
      cars = response.data['data']['vehicles'].map(
          (car) => CarModel.fromJson(car)
      ).toList();
      return cars;
    }
    return [];
  }

  updateCar({
    File? image,
    required int carId,
    required String driverId,
    required String name,
    required String vClass,
    required String plateNumber,
  }) async{
    MultipartFile? multipartFile;
    if(image != null){
      multipartFile = await MultipartFile.fromFile(
        filename: image.path.split('/').last,
        image.path,
      );
    }
      final FormData formData = FormData.fromMap({
        "_method": "patch",
        "vehicle_name": name,
        "vehicle_class": vClass,
        "plate_number": plateNumber,
        "driver_id": driverId,
        "image" :multipartFile
    });
    await dio.post(
      "$mainAPILink/vehicles/update/$carId",
      data: formData,
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
          "Accept": "application/json",
        }
      )
    );

  }

  Future<void> deleteCar(int id) async{
    final response = await dio.delete(
      "$mainAPILink/vehicles/delete/$id",
      options: Options(
        contentType: "application/json",
        headers: {
          "Authorization": "Bearer $token"
        }
      )
    );
  }
}