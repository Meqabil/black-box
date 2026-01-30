import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profile Screen"), backgroundColor: Color(0xFF8B0012)),
      body: const Center(child: Text("This is the Profile Screen")),
    );
  }
}