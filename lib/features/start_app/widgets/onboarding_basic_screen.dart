import 'package:black_box/features/start_app/widgets/dots.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';

class OnboardingBasicScreen extends StatefulWidget {
  OnboardingBasicScreen({super.key,required this.title,required this.subtitle,required this.image,required this.currentPage,required this.controller,required this.titleSize,required this.subtitleSize});
  String image;
  String title;
  String subtitle;
  int currentPage;
  PageController controller ;
  double titleSize;
  double subtitleSize;
  @override
  State<OnboardingBasicScreen> createState() => _OnboardingBasicScreenState();
}

class _OnboardingBasicScreenState extends State<OnboardingBasicScreen> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: mainColor,
      child: Column(
        children: [
          Container(
              padding: EdgeInsets.symmetric(horizontal: 22),
              height:MediaQuery.sizeOf(context).height / 2.8,
              alignment: Alignment.centerLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.title,style: TextStyle(color: Colors.white,fontSize: widget.titleSize,fontWeight: FontWeight.bold),),
                  Text(widget.subtitle,style: TextStyle(color: Colors.white,fontSize: widget.subtitleSize,fontWeight: FontWeight.bold),),
                ],
              )
          ),
          Expanded(
            child: Container(
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(70),
                      topRight: Radius.circular(70)
                  )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 1,
                children: [
                  Image.asset(widget.image),
                  SizedBox(height: 25,),
                  TextButton(
                    onPressed: (){
                      widget.controller.nextPage(duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
                    },
                    child: Text("Next",style: TextStyle(color: mainColor,fontSize: 25,fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 15,
                      children: [
                        Dot(size: 12, filled: widget.currentPage == 0,controller: widget.controller,position: 1,),
                        Dot(size: 12, filled: widget.currentPage != 0,controller: widget.controller,position: 0,),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
