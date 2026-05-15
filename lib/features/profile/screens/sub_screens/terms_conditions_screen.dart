import 'package:black_box/core/constants/global.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../shared/widgets/notification_button.dart';

class TermsConditionsScreen extends StatefulWidget {
  const TermsConditionsScreen({super.key,});
  @override
  State<TermsConditionsScreen> createState() => _CarListScreenState();
}

class _CarListScreenState extends State<TermsConditionsScreen> {

  @override
  void initState(){

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        elevation: 0,
        toolbarHeight: width * .16279,
        title: Text(AppLocalizations.of(context)!.security_title, style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: [
          NotificationButton(),
          SizedBox(width: width * 0.045,)
        ],
      ),

      body: SingleChildScrollView(
        child: SizedBox(
          height: height - width * 0.2077,
          child: Column(
            children: [
              SizedBox(height: width * 0.035),

              Expanded(
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  padding: EdgeInsets.only(left:width * .055,right: width * .0455,top: width * .19,),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(AppLocalizations.of(context)!.terms_title,style: TextStyle(fontSize: width * 0.045,fontWeight: FontWeight.bold),),
                      SizedBox(height: width * 0.045,),
                      Text(AppLocalizations.of(context)!.terms_full,style: TextStyle(fontSize: width * 0.030,),),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}