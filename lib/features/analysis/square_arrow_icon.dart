import 'package:flutter/material.dart';

class SquareArrowIcon extends StatelessWidget{
  final String label;
  final String value;
  final double arrowAngle;
  final Color valueColor;
  final Color iconColor;
  final bool onlyIcon;
  const SquareArrowIcon({super.key,required this.label,required this.value,required this.arrowAngle,required this.valueColor, required this.iconColor, required this.onlyIcon});
  @override
  Widget build(BuildContext context){
    return onlyIcon ?
    Container(
      width: 20,
      height: 20,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: iconColor, width: 1),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Transform.rotate(
        angle: arrowAngle * 3.1416 / 180,
        child: Icon(
          Icons.arrow_back_outlined,
          size: 16,
          color: iconColor,
        ),
      ),
    ) :
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 20,
              height: 20,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(color: iconColor, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Transform.rotate(
                angle: arrowAngle * 3.1416 / 180,
                child: Icon(
                  Icons.arrow_back_outlined,
                  size: 16,
                  color: iconColor,
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

