import 'package:black_box/features/auth/presentation/screens/login/login_screen.dart';
import 'package:black_box/features/start_app/widgets/dots.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../core/theme/app_color.dart';
class OnboardingBasicScreen extends StatefulWidget {
  const OnboardingBasicScreen({super.key,required this.title,required this.subtitle,required this.image,required this.currentPage,required this.controller,required this.titleSize,required this.subtitleSize});
  final String image;
  final String title;
  final String subtitle;
  final int currentPage;
  final PageController controller ;
  final double titleSize;
  final double subtitleSize;
  @override
  State<OnboardingBasicScreen> createState() => _OnboardingBasicScreenState();
}

class _OnboardingBasicScreenState extends State<OnboardingBasicScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.mainRedColor,
      child: Column(
        children: [
          Container(
              padding: EdgeInsets.symmetric(horizontal: 22),
              height:MediaQuery.sizeOf(context).height * .33048,
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
                color: Theme.of(context).colorScheme.secondary,
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
                      if (widget.currentPage == 0) {
                        widget.controller.nextPage(duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
                        return;
                      }
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> LoginScreen()));
                    },
                    child: Text(AppLocalizations.of(context)!.common_next,style: TextStyle(color: AppColor.mainRedColor,fontSize: 25,fontWeight: FontWeight.bold),),
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
