import 'package:flutter/material.dart';
import '../../../../core/constants/global.dart';
import '../../../../core/constants/images.dart';
import '../../../../core/localization/generated/app_localizations.dart';
import 'sub_widgets/crash_button.dart';

class SpeedingIncidentsContent extends StatelessWidget {
  const SpeedingIncidentsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.025,vertical: 8),
      child: Column(
        children: [
          SizedBox(height: 10,),
          SizedBox(
            height: width * 0.116,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppLocalizations.of(context)!.events),
                CrashButton(size: width * 0.0813, imageName: AppImages.calender)
              ],
            ),
          ),
          Expanded(
              child: Container()
          )
        ],
      ),
    );
  }
}
