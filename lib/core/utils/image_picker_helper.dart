

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';
import '../theme/app_color.dart';

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