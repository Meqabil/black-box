import 'package:black_box/core/constants/global.dart';
import 'package:black_box/core/constants/images.dart';
import 'package:black_box/features/notifications/presentation/cubits/notification_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../features/notifications/presentation/screens/notification_screen.dart';
import '../../constants/colors.dart';

class NotificationButton extends StatelessWidget {
  const NotificationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Container(
        width: width * 0.07,
        height: width * 0.07,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: pref!.getString("theme") == 'dark' ? AppColor.lightRed : AppColor.lightPink,
          shape: BoxShape.circle,
        ),
        child: Image.asset(AppImages.bill,width: width * 0.0325,),
      ),
      onPressed: () {
        context.read<NotificationCubit>().getNotifications();
        Navigator.of(context, rootNavigator: true).push(
          MaterialPageRoute(
            builder: (context) => NotificationScreen(),
          ),
        );
      },
    );
  }
}
