
import 'package:black_box/core/constants/global.dart';
import 'package:black_box/features/cars/presentation/cubit/car/car_cubit.dart';
import 'package:black_box/features/cars/presentation/cubit/car/car_state.dart';
import 'package:black_box/features/crash/presentation/cubit/crash_cubit.dart';
import 'package:black_box/features/crash/presentation/cubit/crash_state.dart';
import 'package:black_box/features/drivers/presentation/cubit/driver/driver_cubit.dart';
import 'package:black_box/features/drivers/presentation/cubit/driver/driver_state.dart';
import 'package:black_box/features/notifications/data/datasources/notification_datasource.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../shared/widgets/notification_button.dart';
import '../widgets/circular_indicator.dart';
import '../widgets/small_stat.dart';
import '../widgets/stat_item.dart';
class HomeContent extends StatefulWidget {
  const HomeContent({super.key,});

  @override
  State<HomeContent> createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {

  NotificationDataSource dat = NotificationDataSource();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: width,
                height: height,
                padding: EdgeInsets.all(width * .045),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                AppLocalizations.of(context)!.home_welcome,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: width * .045,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(DateTime.now().hour < 12 ?
                                AppLocalizations.of(context)!.home_good_morning
                                : DateTime.now().hour < 17 ? AppLocalizations.of(context)!.home_good_afternoon
                                : AppLocalizations.of(context)!.home_good_evening,
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: width * .03,
                                ),
                              ),
                            ],
                          ),
                          NotificationButton()
                        ],
                      ),
                      SizedBox(height: width * .045),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: width * .02,horizontal: width * .045),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                StatItem(
                                  label: AppLocalizations.of(context)!.total_active_cars,
                                  value:  "1",
                                  valueColor:  Colors.white,
                                  arrowAngle: 135,
                                ),
                                Container(
                                  width: width * .0045,
                                  height: width * .09,
                                  color: const Color(0xFFDFF7E2),
                                  margin: EdgeInsets.symmetric(horizontal: width * .045),
                                ),
                                BlocBuilder<CarCubit,CarState>(
                                  builder: (context,state) {
                                    if(state is CarSuccess){
                                      return StatItem(
                                        label:  AppLocalizations.of(context)!.total_cars,
                                        value: state.carsList.length.toString(),
                                        valueColor:  const Color(0xFF0068FF),
                                        arrowAngle: -135,
                                      );
                                    }
                                    return StatItem(
                                      label:  AppLocalizations.of(context)!.total_cars,
                                      value: "0",
                                      valueColor:  const Color(0xFF0068FF),
                                      arrowAngle: -135,
                                    );
                                  }
                                ),
                              ],
                            ),
                            SizedBox(height: width * .025),
                            Container(
                              height: width * .07,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(width * .045),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    width: width * .15,
                                    height: width * .09,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF052224),
                                      borderRadius: BorderRadius.circular(width * .045),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      "12.5%",
                                      style: TextStyle(color: Colors.white, fontSize: width * .027),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: width * .0225),
                            Row(
                              children: [
                                Icon(
                                  Icons.check_box_outlined,
                                  color: Colors.white,
                                  size: width * .041,
                                ),
                                SizedBox(width: width * .02),
                                Text(
                                  AppLocalizations.of(context)!.home_active_cars('12'),
                                  style: TextStyle(color: Colors.white, fontSize: width * .029),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: height * 0.7 - (width * .09),
                width: width,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius:  BorderRadius.only(
                    topLeft: Radius.circular(width * .045 * 3.5),
                    topRight: Radius.circular(width * .045 * 3.5),
                  ),
                ),
                child: SingleChildScrollView(
                  padding: EdgeInsets.only(left: width * .05,right: width * .05,top: width * .097),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(width * .045),
                        decoration: BoxDecoration(
                          color: Theme.of(context).cardTheme.color,
                          borderRadius: BorderRadius.circular(width * .069),
                        ),
                        child: Row(
                          children: [
                            CircularIndicator(),
                            SizedBox(
                              width: width * 0.1325,
                              height:   width * .21,
                              child: VerticalDivider(
                                thickness: 1.5,
                                color: Colors.white,
                                width: width * .069,
                                indent: width * .045/4,
                                endIndent: width * .045/4,
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  BlocBuilder<CrashCubit,CrashState>(
                                    builder: (context,state) {
                                      if(state is CrashSuccess){
                                        return SmallStat(
                                          iconWidget: Image.asset(
                                            'assets/crashed_car.png',
                                            width: width * .11,
                                            height: width * .094,
                                          ),
                                          title: AppLocalizations.of(context)!.home_total_accidents,
                                          value: state.crashes.length.toString(),
                                          valColor: Theme.of(context).colorScheme.onSecondaryFixed,
                                        );
                                      }
                                      return SmallStat(
                                        iconWidget: Image.asset(
                                          'assets/crashed_car.png',
                                          width: width * .11,
                                          height: width * .094,
                                        ),
                                        title: AppLocalizations.of(context)!.home_total_accidents,
                                        value: "0",
                                        valColor: Theme.of(context).colorScheme.onSecondaryFixed,
                                      );
                                    }
                                  ),
                                  const Divider(color: Colors.white),
                                  BlocBuilder<DriverCubit,DriverState>(
                                    builder: (context,state) {
                                      if(state is DriversScoreSuccess){
                                        return SmallStat(
                                          iconWidget: Image.asset(
                                            'assets/security_time.png',
                                            width: width * .115,
                                            height: width * .097,
                                            color: Colors.black,
                                          ),
                                          title: AppLocalizations.of(context)!.home_safety_score,
                                          value: "${state.score.toStringAsFixed(0)}%",
                                          valColor: Theme.of(context).colorScheme.onSecondaryFixed,
                                        );
                                      }
                                      return SmallStat(
                                        iconWidget: Image.asset(
                                          'assets/security_time.png',
                                          width: width * .115,
                                          height: width * .097,
                                          color: Colors.black,
                                        ),
                                        title: AppLocalizations.of(context)!.home_safety_score,
                                        value: "0%",
                                        valColor: Theme.of(context).colorScheme.onSecondaryFixed,
                                      );
                                    }
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: width * .045 * 3.5),
                      Image.asset(
                        'assets/car.png',
                        height: width * .55,
                        errorBuilder: (context, error, stackTrace) => Icon(
                          Icons.directions_car,
                          size: width * .35,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}