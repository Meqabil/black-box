import 'package:black_box/features/cars/domain/entities/car_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/constants/colors.dart';
import '../../../cubit/car/car_cubit.dart';
import '../../../cubit/car/car_state.dart';

class DeleteCarDialogue extends StatelessWidget {
  const DeleteCarDialogue({super.key,required this.car});
  final CarEntity car;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: BlocConsumer<CarCubit,CarState>(
        listener: (context,state){
          if(state is CarDeleted){
            Navigator.of(context).pop();
          }
        },
        builder: (context,state){
          return Container(
            width: 340,
            height: 200,
            padding: EdgeInsets.symmetric(horizontal: 12,vertical: 8),
            alignment: Alignment.topLeft,
            child: Column(
              children: [
                Text("Delete driver",style: TextStyle(color: mainRedColor,fontSize: 22,fontWeight: FontWeight.bold),),
                SizedBox(height: 12,),
                Text("Do you really want to delete this driver with plate number (${car.plateNumber})",style: TextStyle(fontSize: 16,),textAlign: TextAlign.center,),
                Spacer(),
                (state is! CarLoading) ?  Row(
                  children: [
                    SizedBox(
                      height: 45,
                      width: 148,
                      child: ElevatedButton(
                        onPressed: () {
                          context.read<CarCubit>().deleteCar(car.id);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: mainRedColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(90),
                          ),
                          minimumSize: const Size(140, 50),
                        ),
                        child: const Text(
                          "Yes",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Spacer(),
                    SizedBox(
                      height: 45,
                      width:148,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: mainRedColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(90),
                          ),

                          minimumSize: const Size(140, 50),
                        ),
                        child: const Text(
                          "Cancel",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ): SizedBox(),
                SizedBox(height: 12,),
                (state is CarLoading) ? Center(child: CircularProgressIndicator(),) : SizedBox()
              ],
            ),
          );
        },
      ),
    );
  }
}
