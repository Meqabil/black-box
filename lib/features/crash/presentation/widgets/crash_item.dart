import 'package:flutter/material.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/global.dart';
import '../../../../core/constants/images.dart';
import 'crash_button.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
          spacing: width * 0.045 / 5,
          children: [
            CrashButton(size: width * 0.117, imageName: AppImages.majorCrash),
            SizedBox(width: width * 0.045 / 6,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(AppLocalizations.of(context)!.event_major_crashes,style: TextStyle(color: Theme.of(context).colorScheme.onSecondaryFixed,fontSize: width * 0.028,fontWeight: FontWeight.w400),),
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
                  Text(AppLocalizations.of(context)!.event_last_speed,style: TextStyle(color: Theme.of(context).colorScheme.onSurface,fontSize: 17,fontWeight: FontWeight.w500),),
                  Text("$lrs Km/H",style: TextStyle(color: Theme.of(context).colorScheme.onSurface,fontSize: 15,),),
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
