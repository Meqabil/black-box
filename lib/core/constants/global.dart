
import 'dart:io';
import 'package:black_box/features/auth/domain/entities/owner_entity.dart';
import 'package:black_box/features/cars/data/datasources/car_datasource.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';
import 'package:image_picker/image_picker.dart';

import '../../features/auth/presentation/screens/login/login_screen.dart';
import 'colors.dart';
Dio dio = Dio();
SharedPreferences? pref;

logOut(BuildContext context ){
  pref!.remove("login_state");
  Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => LoginScreen())
  );
}

Future<File?> pickImages(BuildContext context) async {
  final List<AssetEntity>? result = await AssetPicker.pickAssets(
    context,
    pickerConfig: AssetPickerConfig(
      maxAssets: 1,
      requestType: RequestType.image,
      enableLivePhoto: true,
      pickerTheme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: textFieldColor,
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(color: Colors.white),
          toolbarTextStyle: TextStyle(color: Colors.white),
          backgroundColor: mainRedColor,
          foregroundColor: Colors.yellow,
          iconTheme: IconThemeData(color: Colors.white),
          elevation: 0,
        ),
        canvasColor: Colors.white,
      ),
      specialPickerType: SpecialPickerType.noPreview,
      pageSize: 3,
      gridCount: 3,
    ),
  );
  if(result != null){
    return result[0].file;
  }
}
Future<File?> pickPhotoByCamera() async{
  final picker = ImagePicker();
  XFile? file = await picker.pickImage(source: ImageSource.camera);
  if(file != null){
    return File(file.path);
  }
  return null;
}

loadingSign(BuildContext context){
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context){
      return AlertDialog(
        title: Text("User is signing"),
        content: Center(child: Container(alignment: Alignment.center,height: 200,child: CircularProgressIndicator(color: mainRedColor,))),
      );
    }
  );
}


saveUserData(OwnerEntity owner){
  pref!.setString("login_state", "logged_in");
  pref!.setString("name", owner.name);
  pref!.setString("role", owner.role);
  pref!.setString("email", owner.email);
  pref!.setString("id", owner.id.toString());
  pref!.setString("created_at", owner.createdAt);
  pref!.setString("updated_at", owner.updatedAt);
  pref!.setString("profile_image", owner.profileImage);
  pref!.setString("vehicles_count", owner.vehiclesCount);
  pref!.setString("drivers_count", owner.driversCount);
  pref!.setString("token", pref!.getString("token") ?? 'Unknown');
}

getSavedUserData(){
  return OwnerEntity(
      id: int.parse(pref!.getString("id") ?? '0') ,
      name: pref!.getString("name") ?? 'Unknown',
      email: pref!.getString("email") ?? 'Unknown',
      role: pref!.getString("role") ?? 'Unknown',
      driversCount: pref!.getString("drivers_count") ?? 'Unknown',
      vehiclesCount: pref!.getString("vehicles_count") ?? 'Unknown',
      createdAt: pref!.getString("created_at") ?? 'Unknown',
      updatedAt: pref!.getString("updated_at") ?? 'Unknown',
      profileImage: pref!.getString("profile_image") ?? ''
  );
}


Future<bool> isDriverConnectedToCar(int id) async{
  CarDataSource carDataSource = CarDataSource();
  List cars = await carDataSource.getAllCars();
  print("${cars[5].driverId} $id");
  if(cars.any((car) => int.parse(car.driverId) == id,)){
    print("yes");
    return true;
  }
  return false;
}