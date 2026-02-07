import 'package:black_box/core/constants/colors.dart';
import 'package:black_box/core/constants/global.dart';
import 'package:black_box/features/auth/presentation/bloc/auth/new_password/password_cubit.dart';
import 'package:black_box/features/auth/presentation/bloc/auth/signup/signup_cubit.dart';

import 'package:black_box/features/cars/presentation/cubit/car/car_cubit.dart';
import 'package:black_box/features/drivers/presentation/cubit/car/driver_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'features/auth/presentation/bloc/auth/login/login_cubit.dart';

import 'features/start_app/splash_screen.dart';
import 'injection_container.dart' as di;



void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: mainRedColor
    )
  );
  pref = await SharedPreferences.getInstance();
  await di.init();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => di.s1<LoginCubit>(),
        ),
        BlocProvider(
          create: (context) => di.s1<SignUpCubit>(),
        ),
        BlocProvider(
          create: (context) => di.s1<PasswordCubit>(),
        ),
        BlocProvider(
          create: (context) => di.s1<CarCubit>(),
        ),BlocProvider(
          create: (context) => di.s1<DriverCubit>(),
        ),
      ],
      child: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: mainRedColor,
        colorScheme: ColorScheme(brightness: Brightness.light, primary: mainRedColor, onPrimary: Colors.white, secondary: Colors.red, onSecondary: Colors.blue, error: Colors.red, onError: Colors.red, surface: Colors.white, onSurface: Colors.black),
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white)
        )
      ),
      home: SplashScreen(),
    );
  }
}



