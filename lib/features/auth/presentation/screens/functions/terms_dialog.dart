
import 'package:flutter/material.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/messages.dart';

AlertDialog termsDialog({required BuildContext context,required bool checked, void Function()? onTap}){
  return AlertDialog(
    titlePadding: EdgeInsets.only(top: 8,left: 8,right: 4),
    title: Row(
      children: [
        Text("\nTerms and Conditions",style: TextStyle(color: mainRedColor),),
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
              onChanged: (val){}
            ),
            Text('I accept all the terms and conditions',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    ],
  );
}