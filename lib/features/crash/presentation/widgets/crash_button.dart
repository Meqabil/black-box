import 'package:flutter/material.dart';

import '../../../../core/constants/colors.dart';

class CrashButton extends StatelessWidget {
  const CrashButton({super.key,required this.size,required this.imageName,this.onTap});
  final void Function()? onTap;
  final double size;
  final String imageName;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: size,
        height: size,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColor.lightRed,
          borderRadius: BorderRadius.circular(size/ 2.5),
        ),
        child: Image.asset(imageName,fit: BoxFit.fill,width: size - size * .3,),
      ),
    );
  }
}
