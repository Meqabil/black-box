import 'package:black_box/features/drivers/domain/entities/driver_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/constants/colors.dart';
import '../../../cubit/driver/driver_cubit.dart';
import '../../../cubit/driver/driver_state.dart';

class DeleteDriverDialogue extends StatelessWidget {
  const DeleteDriverDialogue({super.key,required this.driver});
  final DriverEntity driver;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: BlocConsumer<DriverCubit,DriverState>(
        listener: (context,state){
          if(state is DriverDeleted){
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
                Text("Do you really want to delete this driver with plate number (${driver.name})",style: TextStyle(fontSize: 16,),textAlign: TextAlign.center,),
                Spacer(),
                (state is! DriverLoading) ?  Row(
                  children: [
                    SizedBox(
                      height: 45,
                      width: 148,
                      child: ElevatedButton(
                        onPressed: () {
                          context.read<DriverCubit>().deleteDriver(driver.id);
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
                (state is DriverLoading) ? Center(child: CircularProgressIndicator(),) : SizedBox()
              ],
            ),
          );
        },
      ),
    );
  }
}
