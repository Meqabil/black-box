
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
String notificationReason(BuildContext context,String reason,String vehicleInfo,String driverName) {
  driverName = driverName == "Unknown Driver" ? AppLocalizations.of(context)!.unknown_driver : driverName;
  if(reason.contains('Engine')){
    return "$vehicleInfo ${AppLocalizations.of(context)!.driven_by} $driverName ${AppLocalizations.of(context)!.report_overheating_or_dtc}";

  }else if(reason.contains('Collision')){
    return "$vehicleInfo ${AppLocalizations.of(context)!.driven_by} $driverName ${AppLocalizations.of(context)!.report_collision_or_rollover}";
  } else if(reason.contains('fuel')){
    return "$vehicleInfo ${AppLocalizations.of(context)!.driven_by} $driverName ${AppLocalizations.of(context)!.report_fuel_level}";
  }
  return 'Unknown problem';
}
