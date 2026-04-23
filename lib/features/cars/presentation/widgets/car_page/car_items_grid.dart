
import 'package:flutter/material.dart';
import '../../../../../core/constants/colors.dart';
import 'add_car_item.dart';
import 'car_item.dart';

class CarItemsGrid extends StatelessWidget {
  const CarItemsGrid({super.key,required this.state});
  final dynamic state;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: state.carsList.length + 1,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        childAspectRatio: 0.65,
      ),
      itemBuilder: (context, index) {
        if (index < state.carsList.length) {
          return CarItem(
              context:context,
              color:index == 0 ? oceanRed : lightRed,
              id:state.carsList[index].id.toString(),
              car:state.carsList[index]
          );
        } else {
          return AddCarItem(color: lightRed);
        }
      },
    );
  }
}


