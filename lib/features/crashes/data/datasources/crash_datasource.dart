import 'package:black_box/core/network/dio_helper.dart';
import 'package:black_box/features/crashes/data/models/crash_model.dart';

import '../../../../core/constants/links.dart';

class CrashDataSource{
  Future<List> getAllCrashes(String? type,int? carId) async{
    final response = await DioHelper.dio.get(AppLink.showAllCrashes);
    final status = response.data['status'];
    if(status == "success"){
      print(response.data['data']['crashes']);
      final List crashes = response.data['data']['crashes'].map(
          (crash) => CrashModel.fromJson(crash)
      ).toList();

      if(type == "dtc" && carId != null){
        return crashes.where((e) => e.vehicle.id == carId).where((e) => (e.type == "fuel_leak" || e.type == "early_warning") && (e.dtcCodes != null && e.dtcCodes != '')).toList();
      }
      if(type == "coolant" && carId != null){
        return crashes.where((e) => e.vehicle.id == carId).where((e) => (e.coolantTemp != null && e.coolantTemp >= 95)).toList();
      }

      if(carId == null && type == null){
        return crashes;
      }else if(carId == null){
        return crashes.where((e) => e.type == type).toList();
      }else if(type == null){
        return crashes.where((e) => e.vehicle.id == carId).toList();

      }
      final totalCrashes = crashes.where((e) => e.type == type).where((e) => e.vehicle.id == carId).toList();
      return totalCrashes;
    }
    return [];
  }

  Future<void> deleteCrash(int id) async {
    final response = await DioHelper.dio.get("${AppLink.deleteCrash}$id");
    final status = response.data['status'];
    if(status == "success"){
      print("success");
    }
  }
}

