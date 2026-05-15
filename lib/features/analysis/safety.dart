import 'package:flutter/material.dart';

import '../../core/theme/app_color.dart';
class Safety extends StatefulWidget {
  const Safety({super.key});

  @override
  State<Safety> createState() => _SafetyState();
}

class _SafetyState extends State<Safety> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.mainRedColor,
      appBar: AppBar(
        toolbarHeight: 120,
        title: Text("Driving Events ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: AppColor.mainRedColor,
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          IconButton(
              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.white),
                  padding: WidgetStatePropertyAll(EdgeInsets.all(2))
              ),
              onPressed: (){

              }, icon: Icon(Icons.notifications_none,color: AppColor.mainRedColor,size: 35,)),
          SizedBox(width: 20,)
        ],
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Container(
              height: 250,
              padding: const EdgeInsets.all(20.0),
              width: MediaQuery.sizeOf(context).width,
              child: Column(
                children: [
                  Container(
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Driving Behavior Index ",style: TextStyle(fontWeight: FontWeight.bold),),
                        Text("84%",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.sizeOf(context).width / 2 - 30,
                        height: 108,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(14)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.person),
                            Text("Driver Name ",style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("Sameh Sa.",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width / 2 - 30,
                        height: 108,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(14)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.contacts_outlined),
                            Text("Driver Id ",style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("1",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),

                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: [
                      ListTile(
                        leading:Image.asset("assets/small_car.png",),
                        title: Text("Speeding Events"),
                        subtitle: Text("More Details",style: TextStyle(color: Colors.blue),),
                      ),
                      ListTile(
                        leading:Image.asset("assets/crashed_car.png",),
                        title: Text("Speeding Events"),
                        subtitle: Text("More Details",style: TextStyle(color: Colors.blue),),
                      ),
                      ListTile(
                        leading:Image.asset("assets/small_car.png",),
                        title: Text("Speeding Events"),
                        subtitle: Text("More Details",style: TextStyle(color: Colors.blue),),
                      ),
                      ListTile(
                        leading:Image.asset("assets/small_car.png",),
                        title: Text("Speeding Events"),
                        subtitle: Text("More Details",style: TextStyle(color: Colors.blue),),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

