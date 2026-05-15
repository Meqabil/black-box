
import 'package:black_box/features/drivers/presentation/cubit/driver/driver_state.dart';
import 'package:flutter/material.dart';

import '../../../../../core/theme/app_color.dart';
import '../../../../../core/constants/global.dart';
import 'add_driver_item.dart';
import 'driver_item.dart';

class DriverItemsGrid extends StatelessWidget {
  const DriverItemsGrid({super.key,required this.state});
  final DriverSuccess state;
  @override
  Widget build(BuildContext context) {

    return GridView.builder(
      itemCount: 5,//state.driversList.length + 1,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 20,
        childAspectRatio: 0.8,
      ),
      itemBuilder: (context, index) {
        if (index < 5/*state.driversList.length*/) {
          return Container();
          // return DriverItem(
          //     driver:5,// state.driversList[index],
          //
          // );
        } else {
          return AddDriverItem(color: AppColor.lightRed);
        }
      },
    );
  }
}
