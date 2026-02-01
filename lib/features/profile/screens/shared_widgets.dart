import 'package:flutter/material.dart';

const Color kMainRed = Color(0xFF980611);
const Color kNavyBlue = Color(0xFF0A192F);
const Color kFieldFillColor = Color(0xFFF7DFDF);

Widget buildWhiteLayer(Color color, double topMargin) {
  return Positioned(
    top: topMargin,
    left: 0,
    right: 0,
    bottom: 0,
    child: Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(60), topRight: Radius.circular(60)),
      ),
    ),
  );
}

Widget buildCommonBottomBar() {
  return Container(
    height: 90,
    decoration: const BoxDecoration(
        color: kMainRed,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50), topRight: Radius.circular(50))),
    child: const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(Icons.home_outlined, color: Colors.white, size: 30),
        Icon(Icons.layers_outlined, color: Colors.white, size: 30),
        Icon(Icons.person, color: Colors.black, size: 30),
      ],
    ),
  );
}
