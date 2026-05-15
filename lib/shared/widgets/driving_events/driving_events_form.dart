
import 'package:black_box/core/constants/global.dart';
import 'package:black_box/core/constants/images.dart';
import 'package:black_box/features/drivers/presentation/cubit/driver/driver_cubit.dart';
import 'package:black_box/features/drivers/presentation/cubit/driver/driver_state.dart';
import 'package:black_box/shared/widgets/driving_events/sub_widgets/info_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../core/theme/app_color.dart';
import '../notification_button.dart';
class DrivingEventsForm extends StatelessWidget {
  const DrivingEventsForm({super.key,required this.driverId,required this.driverName,required this.carId,required this.pageContent});
  final String driverName;
  final String driverId;
  final String carId;
  final Widget pageContent;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(height: 15),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back, size: 25),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),

                Text(
                  "${AppLocalizations.of(context)!.car_item_title(carId)} ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                NotificationButton()
              ],
            ),
          ),

          const SizedBox(height: 10),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: pref!.getString("theme") == 'dark' ? AppColor.darkBlock : Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
                Text(AppLocalizations.of(context)!.driving_behavior_score,style: TextStyle(color: Theme.of(context).colorScheme.onSecondaryFixed),),
                SizedBox(height: 8, width: double.infinity),
                BlocBuilder<DriverCubit,DriverState>(
                  builder: (context,state) {
                    if(state is DriverScoreSuccess){
                      return Text(
                        "${state.score.toStringAsFixed(0)}%",
                        style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold,color: Theme.of(context).colorScheme.onSecondaryFixed),
                      );
                    }
                    return Text(
                      "84%",
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold,color: Theme.of(context).colorScheme.onSecondaryFixed),
                    );
                  }
                ),
              ],
            ),
          ),

          const SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Expanded(
                  child: InfoCard(
                    title: AppLocalizations.of(context)!.car_driver_name,
                    value: driverName,
                    imagePath: AppImages.driver,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: InfoCard(
                    title: AppLocalizations.of(context)!.driver_id,
                    value: driverId,
                    imagePath: AppImages.id,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 1),

          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 20),
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(60),
                ),
              ),
              child: pageContent,
            ),
          ),
        ],
      ),
    );
  }
}





