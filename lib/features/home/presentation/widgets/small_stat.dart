import 'package:flutter/material.dart';

class SmallStat extends StatelessWidget {
  const SmallStat({super.key,required this.iconWidget,required this.title,required this.value,required this.valColor});
  final Widget iconWidget;
  final String title;
  final String value;
  final Color valColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        iconWidget,
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 9, color: Colors.black54),
            ),
            Text(
              value,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: valColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
