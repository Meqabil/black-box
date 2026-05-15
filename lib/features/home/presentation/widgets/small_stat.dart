import 'package:black_box/core/constants/global.dart';
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
        SizedBox(width: width * .022),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: width * 0.025, color: Theme.of(context).colorScheme.onSecondaryFixed),
            ),
            Text(
              value,
              style: TextStyle(
                fontSize: width * 0.038,
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
