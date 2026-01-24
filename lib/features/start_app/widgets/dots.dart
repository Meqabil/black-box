
import 'package:black_box/core/constants/colors.dart';
import 'package:flutter/material.dart';

class Dot extends StatelessWidget {
  Dot({super.key,required this.size,required this.filled,required this.position,required this.controller});
  double size;
  bool filled;
  int position;
  PageController controller;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        if(position == 0){
          controller.nextPage(duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
        }else{
          controller.previousPage(duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
        }
      },
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: filled ? mainRedColor : Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(90)),
          border: Border.all(color: mainRedColor)
        ),
      ),
    );
  }
}
