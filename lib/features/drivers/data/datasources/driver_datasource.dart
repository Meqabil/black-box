import 'package:black_box/core/constants/global.dart';
import 'package:black_box/core/constants/links.dart';
import 'package:dio/dio.dart';
import '../../../../core/network/dio_helper.dart';
import '../../domain/entities/driver_entity.dart';
import '../models/driver_model.dart';

class DriverDataSource{

  Future<DriverEntity> addDriver({
    required String name,
  }) async{
    FormData formData = FormData.fromMap({
      "name": name,
    });
    final response = await DioHelper.dio.post(
      AppLink.addDriver,
      data: formData,
    );
    final status = response.data['status'];
    if(status == "success"){
      return DriverModel.fromJson(response.data['data']['driver']);
    }
    return DriverModel(id: 0, ownerId: '0', name: 'Unknown',createdAt: 'Unknown', updatedAt: 'Unknown');
  }

  updateDriver({
    required int id,
    required String name,
  }) async{
    final FormData formData = FormData.fromMap({
      "_method": "patch",
      "name": name,
    });
    await DioHelper.dio.post(
      "${AppLink.updateDriver}$id",
      data: formData,
    );
  }


  deleteDriver(int id) async{
    await DioHelper.dio.delete(
      "${AppLink.deleteDriver}$id",
    );
  }


  Future<DriverEntity> showOneDriver(int id) async{
    final response = await DioHelper.dio.get("${AppLink.showOneDriver}$id");
    final status = response.data['status'];
    if(status == 'success'){
      return DriverModel.fromJson(response.data['data']['driver']);
    }
    return DriverModel(id: 0, name: 'Unknown', ownerId: '0', createdAt: "Unknown", updatedAt: "Unknown");
  }

  Future<List> getAllDrivers() async{
    List drivers = [];
    final response = await DioHelper.dio.get(
        AppLink.showAllDrivers,
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
  Future<int> getDriverScore(int id) async{
    final response = await DioHelper.dio.get(
     "${AppLink.driverScore}$id/score"
    );
    final status = response.data['status'];
    if(status == "success"){
      final int? score = response.data['data']['overall_score'];
      if(score == null){
        return 100;
      }
      return score;
    }
    return 0;
  }

  Future<double> getAllDriversScore() async{
    final drivers = await getAllDrivers();
    double total = 0;
    for(int i = 0;i < drivers.length;i++){
      int temp = await getDriverScore(drivers[i].id) ;
      total += temp;
    }
    return total / drivers.length;
  }
}



