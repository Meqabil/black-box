import 'package:flutter/material.dart';

class Dot extends StatelessWidget {
  const Dot({super.key,required this.visible});
  final bool visible;
  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: visible ? 1 : 0,
      duration: const Duration(milliseconds: 250),
      child: Container(
        width: 15,
        height: 15,
        margin: const EdgeInsets.symmetric(horizontal: 6),
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
