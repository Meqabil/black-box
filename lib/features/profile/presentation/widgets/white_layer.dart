import 'package:flutter/material.dart';

class WhiteLayer extends StatelessWidget {
  const WhiteLayer({super.key,required this.color,required this.top});
  final double top;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top, left: 0, right: 0, bottom: 0,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(60),
              topRight: Radius.circular(60)
          ),
        ),
      ),
    );
  }
}
