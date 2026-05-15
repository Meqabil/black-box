import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


import '../../features/auth/presentation/screens/login/login_screen.dart';

SharedPreferences? pref;

double width = 0;
double height = 0;
final GlobalKey<NavigatorState> navigatorKey =
GlobalKey<NavigatorState>();

ValueNotifier<bool> darkMode = ValueNotifier(pref!.getString("theme") == 'dark');

logOut(BuildContext context ){
  pref!.remove("login_state");
  Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => LoginScreen())
  );
}



// loadingSign(BuildContext context){
//   showDialog(
//     context: context,
//     barrierDismissible: false,
//     builder: (context){
//       return AlertDialog(
//         title: Text("User is signing"),
//         content: Center(child: Container(alignment: Alignment.center,height: 200,child: CircularProgressIndicator(color: AppColor.mainRedColor,))),
//       );
//     }
//   );
// }





