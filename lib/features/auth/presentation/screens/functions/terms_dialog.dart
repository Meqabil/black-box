
import 'package:flutter/material.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/messages.dart';

AlertDialog termsDialog({required BuildContext context,required bool checked, void Function()? onTap,required void Function(bool?)? onChanged}){
  return AlertDialog(
    titlePadding: EdgeInsets.only(top: 8,left: 8,right: 4),
    title: Row(
      children: [
        Text("\nTerms and Conditions",style: TextStyle(color: mainRedColor,fontSize: 18,fontWeight: FontWeight.bold),),
        Spacer(),
        IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.close_rounded,color: mainRedColor,size: 30,),
        )
      ],
    ),
    content: Text(AppMessages.signUpTerms,style: TextStyle(fontSize: 12),),
    actions: [
      InkWell(
        onTap: onTap,
        child: Row(
          children: [
            Checkbox(

              value: checked,
              onChanged: onChanged,
            ),
            Text('Accept terms and conditions',style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis,)
          ],
        ),
      ),
    ],
  );
}