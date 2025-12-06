import 'package:black_box/core/constants/colors.dart';
import 'package:black_box/features/start_app/onboaring.dart';
import 'package:black_box/features/start_app/splash_screen.dart';
import 'package:black_box/features/start_app/starting_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: mainColor
    )
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Onboarding(),
    );
  }
}
