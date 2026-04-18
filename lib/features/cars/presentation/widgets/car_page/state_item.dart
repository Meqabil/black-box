
import 'package:flutter/material.dart';

class StateItem extends StatelessWidget {
  const StateItem({super.key,required this.label,required this.value,required this.valueColor,required this.arrowAngle});
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
              width: 20,
              height: 20,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Transform.rotate(
                angle: arrowAngle * 3.1416 / 180,
                child: const Icon(
                  Icons.arrow_back_outlined,
                  size: 16,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(width: 5),
            Text(
              label,
              style: const TextStyle(color: Colors.white, fontSize: 12),
            ),
          ],
        ),
        Text(
          value,
          style: TextStyle(
            color: valueColor,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}


