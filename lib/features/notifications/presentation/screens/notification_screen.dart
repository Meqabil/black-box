import 'package:black_box/core/ui/widgets/notification_button.dart';
import 'package:black_box/features/notifications/presentation/cubits/notification_cubit.dart';
import 'package:black_box/features/notifications/presentation/cubits/notification_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../core/constants/global.dart';
import '../widgets/notification_item.dart';
class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.notification_title,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
        centerTitle: true,
        toolbarHeight: width * 0.186,
        actions: [
          NotificationButton(),
          SizedBox(width: width * 0.035,)
        ],
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.only(top: width * 0.051),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: BlocConsumer<NotificationCubit,NotificationState>(
          listener: (context,state){

          },
          builder: (context,state){
            if(state is NotificationLoading){
              return Center(child: CircularProgressIndicator(),);
            }
            if(state is NotificationSuccess){
              return ListView.builder(
                itemCount: state.notificationsList.length,
                itemBuilder: (context,idx){
                  int len = state.notificationsList.length;
                  if(len == 0){
                    return Center(
                      child: Text(AppLocalizations.of(context)!.empty_no_notifications,),
                    );
                  }
                  print(state.notificationsList[idx].createdAt);
                  return  Padding(
                    padding: EdgeInsets.symmetric(vertical: width * .025,horizontal: width * 0.055),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(formatData(state.notificationsList[idx].createdAt)),
                        SizedBox(height: width * 0.025,),
                        NotificationItem(
                          icon: Icons.notifications,
                          title: state.notificationsList[idx].data.title,
                          subtitle: state.notificationsList[idx].data.message,
                          time: "${formatHour(state.notificationsList[idx].createdAt)}",
                        ),
                      ],
                    ),
                  );
                },
              );
            }
            return Center(child: CircularProgressIndicator(),);
          },
        ),
      ),
    );
  }


}