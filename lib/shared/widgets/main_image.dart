
import 'dart:io';

import 'package:flutter/material.dart';

class MainImage extends StatelessWidget {
  const MainImage({super.key,required this.image,required this.radius});
  final File? image;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius,
      height: radius,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(90)),
          color: Colors.green
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(90)),
        child: Image.file(image!,fit: BoxFit.cover,),
      ),
    );
  }
}
