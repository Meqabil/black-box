import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
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

//
Future<String> getPlaceName(double lat, double lng) async {
  try {
    List<Placemark> placeMarks = await placemarkFromCoordinates(lat, lng);
//
    Placemark place = placeMarks.first;
//
    // print("Country: ${place.country}");
    // print("City: ${place.locality}");
    // print("Area: ${place.subLocality}");
    // print("Street: ${place.street}");
    return "${place.locality}  ${place.street}";
    //return "${place.country} ${place.locality} ${place.subLocality}  ${place.street}";
  } catch (e) {
    print(e.toString());
  }
  return '';
}
/*
Future<String> getPlaceName(double lat, double lng) async {
  try {
    List<Placemark> placeMarks = await placemarkFromCoordinates(lat, lng);

    final place = placeMarks.first;

    final territory = place.subLocality?.trim() ?? '';
    final street = place.street?.trim() ?? '';
    final country = place.country?.trim() ?? '';
    final governorate = place.administrativeArea?.trim() ?? '';

    // If street exists, return Territory + Street
    if (street.isNotEmpty) {
      if (territory.isNotEmpty) {
        return '$territory, $street';
      }
      return street;
    }

    // Otherwise return Country + Governorate
    if (country.isNotEmpty && governorate.isNotEmpty) {
      return '$country, $governorate';
    }

    if (country.isNotEmpty) {
      return country;
    }

    return governorate;
  } catch (e) {
    print(e.toString());
    return '';
  }
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



*/

