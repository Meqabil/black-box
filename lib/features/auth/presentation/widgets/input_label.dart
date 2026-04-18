import 'package:flutter/material.dart';

class InputLabel extends StatelessWidget {
  const InputLabel({super.key,required this.text,required this.textColor});
  final String text;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: textColor,
        fontWeight: FontWeight.bold,
        fontSize: 14,
      ),
    );
  }
}
