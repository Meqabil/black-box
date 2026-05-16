import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../../../../core/constants/global.dart';
import '../../../../../../core/theme/app_color.dart';

class LogoutDialogue extends StatelessWidget {
  const LogoutDialogue({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: width * 0.7906,
        height: width * 0.665,
        padding: EdgeInsets.symmetric(horizontal: width * 0.025,vertical: width * 0.021),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(AppLocalizations.of(context)!.auth_logout,style: TextStyle(color:Theme.of(context).dialogTheme.titleTextStyle?.color,fontSize: 22,fontWeight: FontWeight.bold),),
              SizedBox(height: width * 0.0306,),
              Text("${AppLocalizations.of(context)!.auth_confirm_logout} ",style: TextStyle(fontSize: 16,color: Theme.of(context).dialogTheme.contentTextStyle?.color,),textAlign: TextAlign.center,),
              SizedBox(height: width * 0.0506,),
              SizedBox(

                child: Column(
                  children: [
                    SizedBox(
                      height: width * 0.105,
                      width: width * 0.506,
                      child: ElevatedButton(
                        onPressed: () {
                          logOut(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColor.mainRedColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(90),
                          ),
                          minimumSize: const Size(140, 50),
                        ),
                        child: Text(
                          AppLocalizations.of(context)!.common_yes,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(height: width * 0.0406,),
                    SizedBox(
                      height: width * 0.105,
                      width: width * 0.506,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: pref!.getString("theme") == 'dark' ? null : AppColor.lightPink,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(90),
                          ),


                        ),
                        child: Text(
                          AppLocalizations.of(context)!.common_cancel,
                          style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: width * 0.022,),
            ],
          ),
        ),
      )
    );
  }
}

