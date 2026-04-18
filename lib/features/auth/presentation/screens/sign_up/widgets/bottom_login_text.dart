import 'package:flutter/material.dart';

import '../../../../../../core/constants/colors.dart';
import '../../login/login_screen.dart';

class BottomLoginText extends StatelessWidget {
  const BottomLoginText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Already have an account? ", style: TextStyle(color: Colors.grey[600],fontSize: 15)),
        GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const LoginScreen()),
            );
          },
          child: const Text(
            "Log In",
            style: TextStyle(color: mainRedColor, fontWeight: FontWeight.bold,fontSize: 17),
          ),
        ),
      ],
    );
  }
}
