import 'package:black_box/core/constants/colors.dart';
import 'package:black_box/core/constants/global.dart';
import 'package:black_box/core/ui/widgets/notification_button.dart';
import 'package:black_box/features/cars/presentation/cubit/car/car_cubit.dart';
import 'package:black_box/features/profile/screens/sub_screens/change_password_screen.dart';
import 'package:black_box/features/profile/screens/sub_screens/terms_conditions_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class SecurityScreen extends StatefulWidget {
  const SecurityScreen({super.key,});
  @override
  State<SecurityScreen> createState() => _CarListScreenState();
}

class _CarListScreenState extends State<SecurityScreen> {

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
        toolbarHeight: 70,
        title: Text(AppLocalizations.of(context)!.security_title, style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: [
          NotificationButton(),
          SizedBox(width: 20,)
        ],
      ),

      body: Column(
        children: [
          const SizedBox(height: 15),

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
                  Text(AppLocalizations.of(context)!.security_title,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                  SizedBox(height: width * .11,),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(AppLocalizations.of(context)!.change_password,style: TextStyle(fontWeight: FontWeight.bold,),),
                    trailing: Icon(Icons.arrow_forward_ios_outlined),
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => ChangePasswordScreen()));
                    },
                  ),
                  SizedBox(height: 10,),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(AppLocalizations.of(context)!.terms_title,style: TextStyle(fontWeight: FontWeight.bold),),
                    trailing: Icon(Icons.arrow_forward_ios_outlined),
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => TermsConditionsScreen()));
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}