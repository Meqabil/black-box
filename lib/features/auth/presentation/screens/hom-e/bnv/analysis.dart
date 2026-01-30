import 'package:flutter/material.dart';

class AnalysisScreen extends StatelessWidget {
  const AnalysisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Analysis Screen"), backgroundColor: Color(0xFF8B0012)),
      body: const Center(child: Text("This is the Analysis Screen")),
    );
  }
}