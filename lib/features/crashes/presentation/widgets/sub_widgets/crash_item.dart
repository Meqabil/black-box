import 'package:flutter/material.dart';

import '../../../../../core/theme/app_color.dart';
import '../../../../../core/constants/global.dart';
import '../../../../../core/constants/images.dart';
import 'crash_button.dart';
import 'package:black_box/core/localization/generated/app_localizations.dart';
class CrashItem extends StatefulWidget {
  const CrashItem({super.key,required this.lrs,required this.severity,required this.location,required this.reason,required this.date,required this.title,this.type = 'major_crash',this.coolant = '125',this.dtc= 'P2505',this.notifyDate});
  final String lrs;
  final String severity;
  final String location;
  final String reason;
  final String date;
  final String title;
  final String type;
  final String? coolant;
  final String? dtc;
  final String ? notifyDate;
  

  @override
  State<CrashItem> createState() => _CrashItemState();
}

class _CrashItemState extends State<CrashItem> {
  Color containerColor = Colors.transparent;
  Future<void> animateColor() async {
    setState(() {
      containerColor = Colors.grey.shade400;
    });

    await Future.delayed(const Duration(seconds: 1));

    setState(() {
      containerColor = Colors.transparent;
    });
  }

  @override
  void initState() {
    animateColor();
    super.initState();
  }

  @override
  void dispose() {

    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    if(widget.notifyDate != null && widget.date.toString().substring(0,18) == widget.notifyDate.toString().substring(0,18)){
      return AnimatedContainer(
      duration: Duration(seconds: 2),
      color: containerColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            spacing: width * 0.045 / 5,
            children: [
              CrashButton(size: width * 0.117, imageName: AppImages.majorCrash),
              SizedBox(width: width * 0.045 / 6,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.title,style: TextStyle(color: Theme.of(context).colorScheme.onSecondaryFixed,fontSize: width * 0.028,fontWeight: FontWeight.w400),),
                  Text(widget.date,style: TextStyle(color: Colors.blue,fontSize: width * 0.028,fontWeight: FontWeight.w500),),
                  Text(widget.location,style: TextStyle(color: Theme.of(context).colorScheme.onSurface ,fontSize: width * 0.035,fontWeight: FontWeight.w500),),
                ],
              ),
              SizedBox(height: width * 0.095,child: VerticalDivider(width: width * 0.032,thickness: 1,color: AppColor.mainRedColor,)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(AppLocalizations.of(context)!.event_severity,style: TextStyle(color: AppColor.mainRedColor,fontSize: width * 0.035,fontWeight: FontWeight.w400),),
                  Text(widget.severity,style: TextStyle(color: Theme.of(context).colorScheme.onSurface,fontSize: width * 0.028,fontWeight: FontWeight.w500),),
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
                    Text(AppLocalizations.of(context)!.event_reason,style: TextStyle(color: Theme.of(context).colorScheme.onSurface,fontSize: 17,fontWeight: FontWeight.w500),),
                    Text(widget.reason,style: TextStyle(color: Theme.of(context).colorScheme.onSurface,fontSize: 15,),),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text((widget.type == 'coolant') ? "Coolant" : (widget.type == 'dtc') ? "DTC codes" :   AppLocalizations.of(context)!.event_last_speed,style: TextStyle(color: Theme.of(context).colorScheme.onSurface,fontSize: 17,fontWeight: FontWeight.w500),),
                    Text((widget.type == 'coolant') ? ("${widget.coolant} C" ?? '') : (widget.type == 'dtc') ? widget.dtc ?? '' : "${widget.lrs} Km/H",style: TextStyle(color: Theme.of(context).colorScheme.onSurface,fontSize: 15,),),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 8,),
          SizedBox(width: MediaQuery.sizeOf(context).width,child: Divider(color: AppColor.mainRedColor,thickness: 2,height: 12,)),
          SizedBox(height: 18,),
        ],
      ),
    );
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          spacing: width * 0.045 / 5,
          children: [
            CrashButton(size: width * 0.117, imageName: AppImages.majorCrash),
            SizedBox(width: width * 0.045 / 6,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.title,style: TextStyle(color: Theme.of(context).colorScheme.onSecondaryFixed,fontSize: width * 0.028,fontWeight: FontWeight.w400),),
                Text(widget.date,style: TextStyle(color: Colors.blue,fontSize: width * 0.028,fontWeight: FontWeight.w500),),
                Text(widget.location,style: TextStyle(color: Theme.of(context).colorScheme.onSurface ,fontSize: width * 0.035,fontWeight: FontWeight.w500),),
              ],
            ),
            SizedBox(height: width * 0.095,child: VerticalDivider(width: width * 0.032,thickness: 1,color: AppColor.mainRedColor,)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(AppLocalizations.of(context)!.event_severity,style: TextStyle(color: AppColor.mainRedColor,fontSize: width * 0.035,fontWeight: FontWeight.w400),),
                Text(widget.severity,style: TextStyle(color: Theme.of(context).colorScheme.onSurface,fontSize: width * 0.028,fontWeight: FontWeight.w500),),
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
                  Text(AppLocalizations.of(context)!.event_reason,style: TextStyle(color: Theme.of(context).colorScheme.onSurface,fontSize: 17,fontWeight: FontWeight.w500),),
                  Text(widget.reason,style: TextStyle(color: Theme.of(context).colorScheme.onSurface,fontSize: 15,),),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text((widget.type == 'coolant') ? "Coolant" : (widget.type == 'dtc') ? "DTC codes" :   AppLocalizations.of(context)!.event_last_speed,style: TextStyle(color: Theme.of(context).colorScheme.onSurface,fontSize: 17,fontWeight: FontWeight.w500),),
                  Text((widget.type == 'coolant') ? ("${widget.coolant} C" ?? '') : (widget.type == 'dtc') ? widget.dtc ?? '' : "${widget.lrs} Km/H",style: TextStyle(color: Theme.of(context).colorScheme.onSurface,fontSize: 15,),),
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
