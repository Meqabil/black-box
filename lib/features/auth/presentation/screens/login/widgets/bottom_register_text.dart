import 'package:flutter/material.dart';

import '../../../../../../core/constants/colors.dart';
import '../../sign_up/signup_screen.dart';

class BottomRegisterText extends StatelessWidget {
  const BottomRegisterText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Don't have an account? ", style: TextStyle(color: Colors.grey[600],fontSize: 15)),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const SignupScreen()));
          },
          child: Text(
            "Sign Up",
            style: TextStyle(color: mainRedColor, fontWeight: FontWeight.bold,fontSize: 17),
          ),
        ),
      ],
    );
  }
}
