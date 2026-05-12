
import 'package:black_box/core/constants/colors.dart';
import 'package:flutter/material.dart';
import '../../../../../core/constants/global.dart';
import 'add_car_item.dart';
import 'car_item.dart';

class CarItemsGrid extends StatelessWidget {
  const CarItemsGrid({super.key,required this.state});
  final dynamic state;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: state.carsList.length + 1,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: width * 0.02,
        crossAxisSpacing: width * .045,
        childAspectRatio: 0.8,
      ),
      itemBuilder: (context, index) {
        if (index < state.carsList.length) {
          return CarItem(
              context:context,
              color: Theme.of(context).cardTheme.color ?? AppColor.lightRed,
              id:state.carsList[index].id.toString(),
              car:state.carsList[index]
          );
        } else {
          return AddCarItem(color: Theme.of(context).cardTheme.color ?? AppColor.lightRed);
        }
      },
    );
  }
}


