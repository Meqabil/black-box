import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
String notificationTitle(BuildContext context,String title) {
  if(title.contains('Mechanical')){
    return AppLocalizations.of(context)!.mechanical_failure;
  }else if(title.contains('CRASH')){
    return AppLocalizations.of(context)!.critical_crash;
  } else if(title.contains('Fuel')){
    return AppLocalizations.of(context)!.fuel_leak;
  }
  return 'Unknown problem';
}
