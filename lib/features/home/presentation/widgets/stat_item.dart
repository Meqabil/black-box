import 'package:flutter/material.dart';

import '../../../../core/constants/global.dart';


class StatItem extends StatelessWidget {
  const StatItem({super.key,required this.value, required this.label, required this.valueColor, required this.arrowAngle});
  final String label;
  final String value;
  final Color valueColor;
  final double arrowAngle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: width * .045,
              height: width * .045,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: width * .002),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Transform.rotate(
                angle: arrowAngle * 3.1416 / 180,
                child: Icon(
                  Icons.arrow_back_outlined,
                  size: width * .041,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(width: width * .045/4),
            Text(
              label,
              style: TextStyle(color: Colors.white, fontSize: width * .029),
            ),
          ],
        ),
        Text(
          value,
          style: TextStyle(
            color: valueColor,
            fontSize: width * .06,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
