import 'package:flutter/material.dart';

import '../../core/constants/colors.dart';

class CalenderScreen extends StatefulWidget {
  const CalenderScreen({super.key});

  @override
  State<CalenderScreen> createState() => _CalenderScreenState();
}

class _CalenderScreenState extends State<CalenderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainRedColor,
      appBar: AppBar(
        toolbarHeight: 120,
        title: Text("Driving Events ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: mainRedColor,
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          IconButton(
              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.white),
                  padding: WidgetStatePropertyAll(EdgeInsets.all(2))
              ),
              onPressed: (){

              }, icon: Icon(Icons.notifications_none,color:mainRedColor,size: 35,)),
          SizedBox(width: 20,)
        ],
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Container(
              height: 80,
              padding: const EdgeInsets.all(20.0),
              width: MediaQuery.sizeOf(context).width,
              child: Column(
                children: [],
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
                  child: Container(
                    child: Column(
                      children: [
                        CalendarDatePicker(initialDate: DateTime.now(), firstDate: DateTime(DateTime.april), lastDate: DateTime.now(), onDateChanged: (v){}),
                        SizedBox(height: 25,),
                        MaterialButton(
                          color: mainRedColor,
                          padding: EdgeInsets.symmetric(horizontal: 65,vertical: 2),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                          onPressed: (){

                          },
                          child: Text("Search",style: TextStyle(color: Colors.white,fontSize: 18),),
                        ),
                        Row(
                          children: [
                            Container(
                              width: 57,
                              height: 53,
                              decoration: BoxDecoration(
                                color: Color(0xFFD96B6B),
                                borderRadius: BorderRadius.circular(22)
                              ),
                              child: Icon(Icons.car_crash_outlined),
                            ),
                            SizedBox(width: 15,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Speeding",style: TextStyle(fontSize: 18,color: Color(0xFF052224)),),
                                Text("18:27-April 30",style: TextStyle(fontSize: 14,color: Color(0xFF0068FF)),),
                              ],
                            ),
                            Container(height:40,child: VerticalDivider(width: 45,thickness: 1,color: mainRedColor,)),
                            Text("142 Km/H")
                          ],
                        ),
                        Text("in 100 km/h zone")
                      ],
                    ),
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

