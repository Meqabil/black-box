import 'package:flutter/material.dart';

import '../../core/constants/colors.dart';
import '../../core/constants/global.dart';
import '../../bnv.dart';
import 'onboaring.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{

  late AnimationController controller;
  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    )..forward();

    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => pref!.getString("login_state") == null ?
        Onboarding() :
        BNVScreen()),
      );
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        color: AppColor.mainRedColor,
        alignment: Alignment.center,
        child: FadeTransition(
          opacity: controller,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/start_screen/carline_inverse.png",width: 200,),
              Text("BLACK BOX",style: TextStyle(fontStyle: FontStyle.italic,color: Colors.black,fontSize: 45,fontWeight: FontWeight.bold),),
              Text("RECORD.  ANALYZE.  IMPROVE",style: TextStyle(fontStyle: FontStyle.italic,color: Colors.white),)
            ],
          ),
        ),
      ),
    );
  }
}
