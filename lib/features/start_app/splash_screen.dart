import 'package:flutter/material.dart';

import '../../core/constants/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        color: mainColor,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/start_screen/carline_inverse.png",width: 200,),
            Text("BLACK BOX",style: TextStyle(fontStyle: FontStyle.italic,color: Colors.black,fontSize: 45,fontWeight: FontWeight.bold),),
            Text("RECORD.  ANALYZE.  IMPROVE",style: TextStyle(fontStyle: FontStyle.italic,color: Colors.white),)
          ],
        ),
      ),
    );
  }
}
