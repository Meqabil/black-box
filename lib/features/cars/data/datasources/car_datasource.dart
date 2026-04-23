import 'dart:io';
import 'package:black_box/core/api/dio_helper.dart';
import 'package:black_box/core/constants/links.dart';
import 'package:black_box/features/cars/data/models/car_model.dart';
import 'package:black_box/features/cars/domain/entities/car_entity.dart';
import 'package:dio/dio.dart';

class CarDataSource{

  Future<CarEntity> addCar({
    File? image,
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
    final response = await DioHelper.dio.post(
      AppLink.addVehicle,
      data: formData,
    );
    final status = response.data['status'];
    if(status == "success "){
      return CarModel.fromJson(response.data['data']);
    }
    return CarModel(id: 0, ownerId: 'Unknown', plateNumber: 'Unknown', name: 'Unknown', vClass: 'Unknown', driverId: 'Unknown', createdAt: 'Unknown', updatedAt: 'Unknown');
  }


  Future<List> getAllCars() async{
    List cars = [];
    final response = await DioHelper.dio.get(
      AppLink.showAllVehicle,
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
    await DioHelper.dio.post(
      "${AppLink.updateVehicle}$carId",
      data: formData,
    );

  }

  Future<void> deleteCar(int id) async{
    await DioHelper.dio.delete(
      "${AppLink.deleteVehicle}$id",
    );
  }
}