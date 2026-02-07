import 'package:black_box/features/auth/presentation/screens/login/login_screen.dart';
import 'package:flutter/material.dart';

class SpScreen extends StatefulWidget {
  const SpScreen({super.key});

  @override
  State<SpScreen> createState() => _SpScreenState();
}

class _SpScreenState extends State<SpScreen>
    with SingleTickerProviderStateMixin {

  late AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    )..forward();

    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0D0D0D),
      body: Center(
        child: FadeTransition(
          opacity: controller,
          child: Image.asset(
            "assets/car.png",
            width: 180,
          ),
        ),
      ),
    );
  }
}
