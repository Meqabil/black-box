import 'package:black_box/core/constants/global.dart';
import 'package:black_box/core/constants/links.dart';
import 'package:dio/dio.dart';
import '../../domain/entities/driver_entity.dart';
import '../models/driver_model.dart';



class DriverDataSource{

  Future<DriverEntity> addDriver({
    required String token,
    required String name,
    required String email,
    required String password,
    required String nationalNumber,
    required String licenseNumber,
    required String phone}) async{
    FormData formData = FormData.fromMap({
      "name": name,
      "email": email,
      "password": password,
      "national_number": nationalNumber,
      "license_number": licenseNumber,
      "phone" : phone
    });
    final response = await dio.post(
      "$mainAPILink/drivers/add",
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
      return DriverModel.fromJson(response.data['data']);
    }
    return DriverModel(id: 0, ownerId: '', userId: '', name: 'Unknown', email: 'Unknown', phone: 'Unknown',nationalNumber: "Unknown",licenseNumber: "Unknown", createdAt: 'Unknown', updatedAt: 'Unknown');
  }

  updateDriver({
    required int id,
    required String name,
    required String email,
    required String phone,
    required String nationalNumber,
    required String licenseNumber,
  }) async{
    final FormData formData = FormData.fromMap({
      "_method": "patch",
      "national_number": nationalNumber,
      "license_number": licenseNumber,
      "phone" : phone,
      "name": name,
      "email": email,
    });
    final response = await dio.post(
      "$mainAPILink/drivers/update/$id",
      data: formData,
      options: Options(
        contentType: "application/json",
        headers: {
          "Authorization": "Bearer $token"
        }
      )
    );
    print(response);
  }


  deleteDriver(int id) async{
    final res = await dio.delete(
      "$mainAPILink/drivers/delete/$id",
      options: Options(
        contentType: "application/json",
        headers: {
          "Authorization": "Bearer $token",
        }
      )
    );

  }



  Future<List> getAllDrivers() async{
    List drivers = [];
    final response = await dio.get(
        '$mainAPILink/drivers/show-all',
      options: Options(
        contentType: "application/json",
        headers: {
          "Authorization": "Bearer $token",
        }
      )
    );
    final status = response.data['status'];
    if(status == "success"){
      drivers = response.data['data']['drivers'].map(
          (driver) => DriverModel.fromJson(driver)
      ).toList();
      drivers = drivers.where((dr) => dr.ownerId == pref!.getString("id")).toList();
      return drivers;
    }
    return [];
  }
}



