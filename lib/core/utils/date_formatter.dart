import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DateFormatter{

  // just count number of days
  static Map<String,int> countDate(int numOfDays){
    int days = numOfDays;
    int months = 0;
    int years = 0;
    int weeks = 0;
    while(days > 364){
      days -= 365;
      years += 1;
    }
    while(days > 29){
      days -= 30;
      months += 1;
    }
    while (days > 6){
      days -= 7;
      weeks += 1;
    }
    return {
      "days": days,
      "months": months,
      "weeks": weeks,
      "years": years,
    };
  }

  // To get date since when notification arrived

  static String formatDate(context,String date){
    DateTime dateNow = DateTime.now();
    int tempYear = dateNow.year - int.parse(date.substring(0,4));
    int tempMonth = dateNow.month - int.parse(date.substring(5,7));
    int tempDay = dateNow.day - int.parse(date.substring(8,10));
    int numOfDays = tempYear * 365 + tempMonth * 30 + tempDay;
    Map<String,int> dateNums = countDate(numOfDays);
    if(dateNums['years'] as int >= 5 || (dateNums['years'] as int == 4 && dateNums['months'] as int > 6)){
      return AppLocalizations.of(context)!.more_than_years(5);
    }else if(dateNums['years'] as int >= 4 || (dateNums['years'] as int == 3 && dateNums['months'] as int > 6)){
      return AppLocalizations.of(context)!.more_than_years(4);

    }else if(dateNums['years'] as int >= 3 || (dateNums['years'] as int == 2 && dateNums['months'] as int > 6)){
      return AppLocalizations.of(context)!.more_than_years(3);
    }else if(dateNums['years'] as int >= 2 || (dateNums['years'] as int == 4 && dateNums['months'] as int > 6)){
      return AppLocalizations.of(context)!.more_than_years(2);
    }else if(dateNums['years'] as int >= 1 || (dateNums['years'] as int == 0 && dateNums['months'] as int > 9)){
      return AppLocalizations.of(context)!.since_year;
    }else if(dateNums['months'] as int >= 3){
      return AppLocalizations.of(context)!.since_months("${dateNums['months']}");
    }else if(dateNums['months'] as int == 2){
      return AppLocalizations.of(context)!.since_two_months;
    }else if(dateNums['months'] as int == 1){
      return AppLocalizations.of(context)!.since_month;
    }else if(dateNums['weeks'] as int >= 3){
      return AppLocalizations.of(context)!.since_weeks("${dateNums['weeks']}");
    }else if(dateNums['weeks'] as int == 2){
      return AppLocalizations.of(context)!.since_two_weeks;
    }else if(dateNums['weeks'] as int == 1){
      return AppLocalizations.of(context)!.since_week;
    }else if(dateNums['days'] == 0){
      return AppLocalizations.of(context)!.today;
    }else if(dateNums['days'] == 1){
      return AppLocalizations.of(context)!.yesterday;
    }else if(dateNums['days'] == 2){
      return AppLocalizations.of(context)!.since_two_days;
    } else {
      return AppLocalizations.of(context)!.since_days("${dateNums['days']}");
    }
  }


  static String formatYear(String date){
    return date.substring(0,4);
  }


  // show day and month format

  static String formatMonth(BuildContext context,String date){
    String month = date.substring(5,7);
    String day = date.substring(8,10);
    switch(month){
      case == "01":
        return "${AppLocalizations.of(context)!.january} $day";
      case == "02":
        return "${AppLocalizations.of(context)!.february} $day";
      case == "03":
        return "${AppLocalizations.of(context)!.march} $day";
      case == "04":
        return "${AppLocalizations.of(context)!.april} $day";
      case == "05":
        return "${AppLocalizations.of(context)!.may} $day";
      case == "06":
        return "${AppLocalizations.of(context)!.june} $day";
      case == "07":
        return "${AppLocalizations.of(context)!.july} $day";
      case == "08":
        return "${AppLocalizations.of(context)!.august} $day";
      case == "09":
        return "${AppLocalizations.of(context)!.september} $day";
      case == "10":
        return "${AppLocalizations.of(context)!.october} $day";
      case == "11":
        return "${AppLocalizations.of(context)!.november} $day";
      case == "12":
        return "${AppLocalizations.of(context)!.december} $day";
      default:
        return "No date";
    }
  }

  static formatHour(String date){
    int hour = (int.parse(date.substring(11,13)) + 2);
    String minute = date.substring(14,16);
    return "${(hour).toString().padLeft(2,'0')}:${minute.padRight(2,'0')}";
  }

}