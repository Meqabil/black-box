import 'package:flutter/material.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/images.dart';
import 'crash_button.dart';

class CrashItem extends StatelessWidget {
  const CrashItem({super.key,required this.lrs,required this.severity,required this.location,required this.reason,required this.date});
  final String lrs;
  final String severity;
  final String location;
  final String reason;
  final String date;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          spacing: 5,
          children: [
            CrashButton(size: 55, imageName: AppImages.majorCrash),
            SizedBox(width: 7,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Major Crash',style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.w400),),
                Text(date,style: TextStyle(color: Colors.blue,fontSize: 12,fontWeight: FontWeight.w500),),
                Text(location,style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),),
              ],
            ),
            SizedBox(height: 45,child: VerticalDivider(width: 25,thickness: 1,color: AppColor.mainRedColor,)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('severity',style: TextStyle(color: AppColor.mainRedColor,fontSize: 17,fontWeight: FontWeight.w400),),
                Text(severity,style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.w500),),
              ],
            ),
          ],
        ),
        SizedBox(height: 25,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Reason',style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.w500),),
                  Text(reason,style: TextStyle(color: Colors.black,fontSize: 15,),),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Last Recorded Speed',style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.w500),),
                  Text("$lrs Km/H",style: TextStyle(color: Colors.black,fontSize: 15,),),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 8,),
        SizedBox(width: MediaQuery.sizeOf(context).width,child: Divider(color: AppColor.mainRedColor,thickness: 2,height: 12,)),
        SizedBox(height: 18,),
      ],
    );
  }
}
