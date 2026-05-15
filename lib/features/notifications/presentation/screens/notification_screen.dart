import 'package:black_box/core/utils/date_formatter.dart';
import 'package:black_box/features/notifications/presentation/cubits/notification_cubit.dart';
import 'package:black_box/features/notifications/presentation/cubits/notification_state.dart';
import 'package:black_box/features/notifications/presentation/widgets/functions/notification_reason.dart';
import 'package:black_box/features/notifications/presentation/widgets/functions/notification_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../../core/theme/app_color.dart';
import '../../../../core/constants/global.dart';
import '../../../../core/constants/images.dart';
import '../widgets/notification_item.dart';
class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});


  @override
  Widget build(BuildContext context) {
    context.read<NotificationCubit>().getNotifications();
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.notification_title,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
        centerTitle: true,
        toolbarHeight: width * 0.186,
        actions: [
          IconButton(
            icon: Container(
              width: width * 0.09,
              height: width * 0.09,
              padding: EdgeInsets.all(width * 0.045/4),
              decoration: BoxDecoration(
                color: pref!.getString("theme") == 'dark' ? AppColor.lightRed : AppColor.lightPink,
                shape: BoxShape.circle,
              ),
              child: Image.asset(AppImages.bill,width: width * 0.0325,),
            ),
            onPressed: () {
              context.read<NotificationCubit>().getNotifications();
            },
          ),
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
                  return  Padding(
                    padding: EdgeInsets.symmetric(vertical: width * .025,horizontal: width * 0.055),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        (idx != 0 && state.notificationsList[idx].createdAt.toString().substring(0,10) == state.notificationsList[idx - 1].createdAt.toString().substring(0,10)) ? Container() : Text(DateFormatter.formatDate(context,state.notificationsList[idx].createdAt)),
                        SizedBox(height: width * 0.025,),
                        NotificationItem(
                          icon: Icons.notifications,
                          title: notificationTitle(context,state.notificationsList[idx].data.title),
                          subtitle: notificationReason(context, state.notificationsList[idx].data.details.reason, state.notificationsList[idx].data.details.vehicleInfo, state.notificationsList[idx].data.details.driverName) ,
                          time: DateFormatter.formatDate(context,state.notificationsList[idx].createdAt) == AppLocalizations.of(context)!.today || DateFormatter.formatDate(context,state.notificationsList[idx].createdAt) == AppLocalizations.of(context)!.yesterday ?
                            "${DateFormatter.formatHour(state.notificationsList[idx].createdAt)}"
                            : DateFormatter.formatDate(context,state.notificationsList[idx].createdAt).contains(AppLocalizations.of(context)!.year) ?
                              "${DateFormatter.formatHour(state.notificationsList[idx].createdAt)} - ${DateFormatter.formatMonth(context,state.notificationsList[idx].createdAt)}, ${state.notificationsList[idx].createdAt.toString().substring(0,4)}"
                              :
                              "${DateFormatter.formatHour(state.notificationsList[idx].createdAt)} - ${DateFormatter.formatMonth(context,state.notificationsList[idx].createdAt)} "
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