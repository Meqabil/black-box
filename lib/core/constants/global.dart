
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

double width = 0;
double height = 0;

ValueNotifier<bool> darkMode = ValueNotifier(pref!.getString("theme") == 'dark');

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
        scaffoldBackgroundColor: AppColor.textFieldColor,
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(color: Colors.white),
          toolbarTextStyle: TextStyle(color: Colors.white),
          backgroundColor: Theme.of(context).colorScheme.primary,
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
        content: Center(child: Container(alignment: Alignment.center,height: 200,child: CircularProgressIndicator(color: AppColor.mainRedColor,))),
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


Map<String,int> countData(int numOfDays){
  int days = numOfDays;
  int months = 0;
  int years = 0;
  int weeks = 0;
  while(days > 364){
    days -= 365;
    years += 1;
  }
  while(days > 29){
    days -= 30;
    months += 1;
  }
  while (days > 6){
    days -= 7;
    weeks += 1;
  }
  return {
    "days": days,
    "months": months,
    "weeks": weeks,
    "years": years,
  };
}

String formatData(String date){
  DateTime dateNow = DateTime.now();
  int tempYear = dateNow.year - int.parse(date.substring(0,4));
  int tempMonth = dateNow.month - int.parse(date.substring(5,7));
  int tempDay = dateNow.day - int.parse(date.substring(8,10));
  int numOfDays = tempYear * 365 + tempMonth * 30 + tempDay;
  Map<String,int> dateNums = countData(numOfDays);
  if(dateNums['years'] as int >= 5 || (dateNums['years'] as int == 4 && dateNums['months'] as int > 6)){
    return "More Than 5 Years";
  }else if(dateNums['years'] as int >= 4 || (dateNums['years'] as int == 3 && dateNums['months'] as int > 6)){
    return "Since 4 Years";
  }else if(dateNums['years'] as int >= 3 || (dateNums['years'] as int == 2 && dateNums['months'] as int > 6)){
    return "Since 3 Years";
  }else if(dateNums['years'] as int >= 2 || (dateNums['years'] as int == 4 && dateNums['months'] as int > 6)){
    return "Since 2 Years";
  }else if(dateNums['years'] as int >= 1 || (dateNums['years'] as int == 0 && dateNums['months'] as int > 9)){
    return "Since 1 Year";
  }else if(dateNums['months'] as int >= 1){
    return "Since ${dateNums['months']} Months";
  }else if(dateNums['weeks'] as int >= 1){
    return "Since ${dateNums['weeks']} Weeks";
  } else if(dateNums['days'] == 0){
    return "Today";
  }else if(dateNums['days'] == 1){
    return "Yesterday";
  } else {
    return "Since ${dateNums['days']} days";
  }
}

String formatMonth(String date){
  String month = date.substring(5,7);
  String day = date.substring(8,10);
  switch(month){
    case == "01":
      return "January $day";
    case == "02":
      return "January $day";
    case == "03":
      return "January $day";
    case == "04":
      return "January $day";
    case == "05":
      return "January $day";
    case == "06":
      return "January $day";
    case == "07":
      return "January $day";
    case == "08":
      return "January $day";
    case == "09":
      return "January $day";
    case == "10":
      return "January $day";
    case == "11":
      return "January $day";
    case == "12":
      return "January $day";
    default:
      return "No date";
  }
}
//2026-05-11T17:09:13.037000Z
formatHour(String date){
  int hour = (int.parse(date.substring(11,13)) + 2);
  String minute = date.substring(14,16);
  return "$hour:$minute";
}