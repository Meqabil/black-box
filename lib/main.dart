
import 'package:black_box/core/network/dio_helper.dart';
import 'package:black_box/core/constants/global.dart';
import 'package:black_box/core/theme/app_theme.dart';
import 'package:black_box/features/auth/presentation/cubit/auth/new_password/password_cubit.dart';
import 'package:black_box/features/auth/presentation/cubit/auth/signup/signup_cubit.dart';
import 'package:black_box/features/auth/presentation/cubit/owner/owner_cubit.dart';

import 'package:black_box/features/cars/presentation/cubit/car/car_cubit.dart';
import 'package:black_box/features/crashes/presentation/cubit/crash_cubit.dart';
import 'package:black_box/features/drivers/presentation/cubit/driver/driver_cubit.dart';
import 'package:black_box/features/notifications/presentation/cubits/notification_cubit.dart';
import 'package:black_box/features/notifications/presentation/screens/notification_screen.dart';
import 'package:black_box/features/settings/presentation/cubit/language_cubit.dart';
import 'package:black_box/features/settings/presentation/cubit/language_state.dart';
import 'package:black_box/features/start_app/splash_screen.dart';
import 'package:black_box/features/trips/presentation/cubit/trip_cubit.dart';
import 'package:black_box/features/trips/presentation/screens/tripsscree.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'core/theme/app_color.dart';
import 'core/utils/notification_helper.dart';
import 'features/auth/presentation/cubit/auth/login/login_cubit.dart';
import 'injection_container.dart' as di;

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: AppColor.mainRedColor
    )
  );
  runApp(
    const AppBootstrap()
  );
  print(pref?.getString("token"));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageCubit,LanguageState>(
      builder: (context,state) {
        width = MediaQuery.of(context).size.width;
        height = MediaQuery.of(context).size.height;
        return ValueListenableBuilder(
          valueListenable: darkMode,
          builder: (context,val,_){
            return MaterialApp(
              navigatorKey: navigatorKey,
              debugShowCheckedModeBanner: false,
              theme: AppTheme.lightTheme,
              darkTheme: AppTheme.darkTheme,
              themeMode: pref!.getString("theme") == 'dark' ? ThemeMode.dark : ThemeMode.light,
              //home: SplashScreen(),
              locale: pref!.getString('lang') == null ? state.locale : Locale(pref!.getString('lang') ?? 'en'),
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
              routes: {
                "/" : (context) => SplashScreen(),
                "/notification" : (context) => NotificationScreen()
              },
            );
          },
        );
      }
    );
  }
}


class AppBootstrap extends StatefulWidget {
  const AppBootstrap({super.key});

  @override
  State<AppBootstrap> createState() => _AppBootstrapState();
}

class _AppBootstrapState extends State<AppBootstrap> {
  bool isReady = false;
  @override
  void initState() {
    _initApp();
    super.initState();
  }
  Future<void> _initApp() async {
    pref = await SharedPreferences.getInstance();

    await di.init();
    DioHelper.init();

    // One call sets up WorkManager + registers the periodic task
    await registerNotificationWorker();

    // Init notifications for the main isolate
    await initNotifications();



    setState(() => isReady = true);
  }
  @override
  Widget build(BuildContext context) {
    if (!isReady) {
      return const MaterialApp(
        home: MaterialApp(
          debugShowCheckedModeBanner: false,
          debugShowMaterialGrid: false,

          home: Scaffold(

            backgroundColor: AppColor.mainRedColor,
            body: Center(),
          ),
        ),
      );
    }
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => di.s1<LoginCubit>(),
        ),
        BlocProvider(
          create: (context) => di.s1<SignUpCubit>(),
        ),
        BlocProvider(
          create: (context) => di.s1<OwnerCubit>(),
        ),
        BlocProvider(
          create: (context) => di.s1<PasswordCubit>(),
        ),
        BlocProvider(
          create: (context) => di.s1<CarCubit>(),
        ),
        BlocProvider(
          create: (context) => di.s1<DriverCubit>(),
        ),
        BlocProvider(
          create: (context) => di.s1<NotificationCubit>(),
        ),
        BlocProvider(
          create: (context) => di.s1<CrashCubit>(),
        ),
        BlocProvider(
          create: (context) => di.s1<LanguageCubit>(),
        ),
        BlocProvider(
          create: (context) => di.s1<TripCubit>(),
        ),
      ],
      child: MyApp(),
    );
  }
}


// class MapPage extends StatefulWidget {
//   const MapPage({super.key});
//
//   @override
//   State<MapPage> createState() => _MapPageState();
// }
//
// class _MapPageState extends State<MapPage> {
//
//   Future<void> getLocation() async {
//     bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
//     if (!serviceEnabled) return;
//
//     LocationPermission permission = await Geolocator.requestPermission();
//     if (permission == LocationPermission.denied) return;
//
//     Position position = await Geolocator.getCurrentPosition();
//
//     setState(() {
//       currentLocation = LatLng(position.latitude, position.longitude);
//       print(currentLocation);
//
//       // initialize route with current location
//       routePoints = [currentLocation!];
//     });
//
//     // move camera to user location
//     mapController.move(currentLocation!, currentZoom);
//   }
//   final MapController mapController = MapController();
//   List<LatLng> routePoints = [
//     LatLng(30.0444, 31.2357), // Cairo
//     LatLng(30.0500, 31.2400),
//     LatLng(30.0550, 31.2450),
//   ];
//
//   LatLng? currentLocation = const LatLng(30.04444, 31.2357); // fallback Cairo
//   double currentZoom = 15;
//
//   // 🔥 Map styles
//   String getTileUrl() {
//     return "https://api.maptiler.com/maps/base-v4/{z}/{x}/{y}.png?key=QpG5PqQAuydF4YpwAbkp";
//   }
//
//   void zoomIn() {
//     setState(() {
//       currentZoom = (currentZoom + 1).clamp(3.0, 70.0);
//       mapController.move(mapController.camera.center, currentZoom);
//     });
//   }
//
//   void zoomOut() {
//     setState(() {
//       currentZoom = (currentZoom - 1).clamp(3.0, 70.0);
//       mapController.move(mapController.camera.center, currentZoom);
//     });
//   }
//
//   @override
//   initState(){
//     getLocation();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           FlutterMap(
//
//             mapController: mapController,
//             options: MapOptions(
//               initialCenter: currentLocation!,
//               initialZoom: currentZoom,
//
//               // ✅ IMPORTANT: enable built-in gestures
//               interactionOptions: const InteractionOptions(
//                 flags: InteractiveFlag.all,
//               ),
//
//               onTap: (tapPosition, point) {
//                 print("Tapped: $point");
//               },
//
//               onPositionChanged: (position, hasGesture) {
//                 currentZoom = position.zoom!;
//               },
//             ),
//
//             children: [
//               TileLayer(
//                 urlTemplate: getTileUrl(),
//                 userAgentPackageName: 'com.black.box.black_box',
//               ),
//
//               PolylineLayer(
//                 polylines: [
//                   Polyline(
//                     points: routePoints,
//                     strokeWidth: 5,
//                     color: Colors.blue,
//                   ),
//                 ],
//               ),
//               MarkerLayer(
//                 markers: [
//                   Marker(
//                     point: currentLocation!,
//                     width: 80,
//                     height: 80,
//                     child: const Icon(
//                       Icons.location_on,
//                       color: Colors.red,
//                       size: 40,
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//
//           // 🔥 Zoom buttons
//           Positioned(
//             bottom: 30,
//             right: 15,
//             child: Row(
//               spacing: 15,
//               children: [
//                 InkWell(
//                   onTap: (){
//                     zoomIn();
//                   },
//                   child: Container(
//                     width: 62,
//                     height: 70,
//                     decoration: BoxDecoration(
//                       color: Colors.black.withAlpha(110),
//                       borderRadius: BorderRadius.circular(18)
//                     ),
//                     child: const Icon(Icons.add,color: Colors.white,),
//                   ),
//                 ),
//                 InkWell(
//                   onTap: (){
//                     zoomOut();
//                   },
//                   child: Container(
//                     width: 62,
//                     height: 70,
//                     decoration: BoxDecoration(
//                       color: Colors.black.withAlpha(110),
//                       borderRadius: BorderRadius.circular(18)
//                     ),
//                     child: const Icon(Icons.remove,color: Colors.white,),
//                   ),
//                 ),
//
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }




