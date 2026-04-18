
import 'package:black_box/features/drivers/presentation/cubit/driver/driver_state.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/global.dart';
import 'add_driver_item.dart';
import 'driver_item.dart';

class DriverItemsGrid extends StatelessWidget {
  const DriverItemsGrid({super.key,required this.state});
  final DriverSuccess state;
  @override
  Widget build(BuildContext context) {

    return GridView.builder(
      itemCount: state.driversList.length + 1,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 20,
        childAspectRatio: 0.8,
      ),
      itemBuilder: (context, index) {
        if (index < state.driversList.length) {
          return DriverItem(
              driver: state.driversList[index],

          );
        } else {
          return AddDriverItem(color: lightRed);
        }
      },
    );
  }
}
