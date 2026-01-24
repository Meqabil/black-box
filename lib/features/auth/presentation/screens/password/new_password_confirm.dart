import 'package:flutter/material.dart';

class PasswordSuccessScreen extends StatelessWidget {
  const PasswordSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFB00000),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [

            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 4,
                ),
              ),
              child: const Center(
                child: CircleAvatar(
                  radius: 6,
                  backgroundColor: Colors.white,
                ),
              ),
            ),

            const SizedBox(height: 30),


            const Text(
              "Password Has Been\nChanged Successfully",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}