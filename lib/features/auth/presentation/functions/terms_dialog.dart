import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../../../core/constants/global.dart';
import '../../../../../core/theme/app_color.dart';
AlertDialog termsDialog({required BuildContext context,required bool checked, void Function()? onTap,required void Function(bool?)? onChanged}){
  return AlertDialog(
    titlePadding: EdgeInsets.only(top: width * .025,left: width * .025,right: width * .014),
    backgroundColor: Theme.of(context).colorScheme.secondary,
    title: Row(
      children: [
        Text(AppLocalizations.of(context)!.terms_title,style: TextStyle(color: AppColor.mainRedColor,fontSize: width * .043,fontWeight: FontWeight.bold),),
        Spacer(),
        IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.close_rounded,color: AppColor.mainRedColor,size: width * .069,),
        )
      ],
    ),
    content: Text(
      AppLocalizations.of(context)!.terms_full,
      style: TextStyle(fontSize: width * .0268),
    ),
    actions: [
      InkWell(
        onTap: onTap,
        child: Row(
          children: [
            Checkbox(
              value: checked,
              onChanged: onChanged,
            ),
            Text(AppLocalizations.of(context)!.terms_accept,style: TextStyle(fontSize: width * .021,fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis,)
          ],
        ),
      ),
    ],
  );
}