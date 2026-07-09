
import 'package:flutter/material.dart';
import '../../../../../core/theme/app_color.dart';
import '../../../../../core/constants/global.dart';
import '../../../../../core/constants/images.dart';
import 'package:black_box/core/localization/generated/app_localizations.dart';
import '../../../crashes/presentation/widgets/sub_widgets/crash_button.dart';

class CrashItemCalender extends StatelessWidget {
  CrashItemCalender({super.key,required this.lrs,required this.severity,required this.location,required this.reason,required this.date,required this.title,this.type = 'major_crash',this.coolant = '125',this.dtc= 'P2505',required this.selectedDate});
  final String lrs;
  final String severity;
  final String location;
  final String reason;
  final String date;
  final String selectedDate;
  final String title;
  String type;
  String? coolant;
  String? dtc;

  @override
  Widget build(BuildContext context) {
    return date.substring(0,10) == selectedDate.substring(0,10) ? Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text("$selectedDate "),
        Row(
          spacing: width * 0.045 / 5,
          children: [
            CrashButton(size: width * 0.117, imageName: AppImages.majorCrash),
            SizedBox(width: width * 0.045 / 6,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,style: TextStyle(color: Theme.of(context).colorScheme.onSecondaryFixed,fontSize: width * 0.028,fontWeight: FontWeight.w400),),
                Text(date,style: TextStyle(color: Colors.blue,fontSize: width * 0.028,fontWeight: FontWeight.w500),),
                Text(location,style: TextStyle(color: Theme.of(context).colorScheme.onSurface ,fontSize: width * 0.035,fontWeight: FontWeight.w500),),
              ],
            ),
            SizedBox(height: width * 0.095,child: VerticalDivider(width: width * 0.032,thickness: 1,color: AppColor.mainRedColor,)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(AppLocalizations.of(context)!.event_severity,style: TextStyle(color: AppColor.mainRedColor,fontSize: width * 0.035,fontWeight: FontWeight.w400),),
                Text(severity,style: TextStyle(color: Theme.of(context).colorScheme.onSurface,fontSize: width * 0.028,fontWeight: FontWeight.w500),),
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
                  Text(reason,style: TextStyle(color: Theme.of(context).colorScheme.onSurface,fontSize: 15,),),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text((type == 'coolant') ? "Coolant" : (type == 'dtc') ? "DTC codes" :   AppLocalizations.of(context)!.event_last_speed,style: TextStyle(color: Theme.of(context).colorScheme.onSurface,fontSize: 17,fontWeight: FontWeight.w500),),
                  Text((type == 'coolant') ? ("$coolant C" ?? '') : (type == 'dtc') ? dtc ?? '' : "$lrs Km/H",style: TextStyle(color: Theme.of(context).colorScheme.onSurface,fontSize: 15,),),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 8,),
        SizedBox(width: MediaQuery.sizeOf(context).width,child: Divider(color: AppColor.mainRedColor,thickness: 2,height: 12,)),
        SizedBox(height: 18,),
      ],
    ) : Container();
  }
}
