import 'dart:io';
import 'package:black_box/core/constants/global.dart';
import 'package:black_box/core/constants/links.dart';
import 'package:black_box/core/network/dio_helper.dart';
import 'package:black_box/features/auth/domain/entities/owner_entity.dart';
import 'package:dio/dio.dart';
import '../../../../core/utils/user_data_helper.dart';
import '../models/owner_model.dart';



class OwnerDataSource{

  Future<OwnerEntity> showOneOwner(int id) async{
    final res = await DioHelper.dio.get(
        "${AppLink.showOwner}$id",
    );
    final status = res.data['status'];
    if(status == "success"){
      final owner = OwnerModel.fromJson(res.data['data']['owner']);
      return owner;
    }
    return OwnerEntity(id: 0, name: "Unknown", email: "Unknown", role: "Unknown", createdAt: "createdAt", updatedAt: "updatedAt", profileImage: "profileImage", vehiclesCount: '0', driversCount: "0");
  }


  Future<void> updateOwner({required int id,required String name,File? image}) async{
    final FormData formData = FormData.fromMap({
      "_method": "patch",
      "name": name,
      if (image != null)
        'profile_image': await MultipartFile.fromFile(
          image.path,
          filename: image.path.split('/').last,
        )
    });
    await DioHelper.dio.post(
      "${AppLink.updateOwner}$id",
      data: formData,
    );

    final OwnerEntity owner = await showOneOwner(id);
    saveUserData(owner);
  }


  deleteOwner(int id) async{
    await DioHelper.dio.delete(
      "${AppLink.deleteOwner}$id",
      options: Options(
        contentType: "application/json",
        headers: {
          "Authorization": "Bearer ${pref!.getString("token")}",
        }
      )
    );

  }

}



