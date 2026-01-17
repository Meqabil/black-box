import 'package:flutter/material.dart';
import 'login/login_pages/login_screen.dart';
import 'login/signup_page/signup.dart';
import 'login/password_page/forgot_password_screen.dart';
import 'login/password_page/security_pin_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Auth Screens',
      theme: ThemeData(
        primaryColor: Color(0xFF9B0D15),
        scaffoldBackgroundColor: Color(0xFFF8FFF6),
        fontFamily: 'Arial',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/create': (context) => Signup(),
        '/forgot': (context) => ForgotPasswordScreen(),
        '/pin': (context) => SecurityPinScreen(),
      },
    );
  }
}



