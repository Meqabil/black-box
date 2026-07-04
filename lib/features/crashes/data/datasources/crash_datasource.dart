import 'package:black_box/core/network/dio_helper.dart';
import 'package:black_box/features/crashes/data/models/crash_model.dart';

import '../../../../core/constants/links.dart';

class CrashDataSource{
  Future<List> getAllCrashes(String type) async{
    final response = await DioHelper.dio.get(AppLink.showAllCrashes);
    final status = response.data['status'];
    if(status == "success"){
      print(response.data['data']['crashes']);
      final List crashes = response.data['data']['crashes'].map(
          (crash) => CrashModel.fromJson(crash)
      ).toList();

      print("crahses : $crashes");
      return crashes.where((e) => e.type == type).toList();
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

