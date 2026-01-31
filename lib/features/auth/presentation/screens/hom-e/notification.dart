import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notifications"),
        backgroundColor: const Color(0xFF8B0012),
      ),
      body: const Center(
        child: Text("No notifications yet", style: TextStyle(fontSize: 16)),
      ),
    );
  }
}