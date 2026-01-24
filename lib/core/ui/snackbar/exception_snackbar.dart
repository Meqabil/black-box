import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class ExceptionSnackBar {
  late SnackBar snack;
  ExceptionSnackBar();
  SnackBar show(String msg){
    snack = SnackBar(
      content: Text(msg),
      backgroundColor: mainRedColor,
      padding: EdgeInsets.only(left: 14,right: 4,top: 5,bottom: 5),
      margin: EdgeInsets.all(8),
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
      showCloseIcon: true,
    );
    return snack;
  }
}