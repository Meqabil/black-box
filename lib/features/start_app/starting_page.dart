import 'package:black_box/core/constants/colors.dart';
import 'package:flutter/material.dart';

class StartingPage extends StatelessWidget {
  const StartingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/start_screen/carline.png",width: 200,),
            Text("BLACK BOX",style: TextStyle(fontStyle: FontStyle.italic,color: Colors.red,fontSize: 45,fontWeight: FontWeight.bold),),
            SizedBox(height: 35,),
            FilledButton(onPressed: (){},style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(mainColor),fixedSize: WidgetStatePropertyAll(Size(170,40))), child: Text("Get Start",style: TextStyle(fontSize: 18),),)
          ],
        ),
      ),
    );
  }
}
