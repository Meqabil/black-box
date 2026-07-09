import 'package:black_box/core/constants/images.dart';
import 'package:black_box/features/analysis/calender.dart';
import 'package:black_box/features/crashes/presentation/cubit/crash_cubit.dart';
import 'package:black_box/features/crashes/presentation/cubit/crash_state.dart';
import 'package:black_box/features/crashes/presentation/widgets/sub_widgets/crash_button.dart';
import 'package:black_box/features/crashes/presentation/widgets/sub_widgets/crash_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:black_box/core/localization/generated/app_localizations.dart';
import '../../../../core/constants/global.dart';

class CrashContent extends StatelessWidget {
  const CrashContent({super.key,required this.title,required this.carId,this.notifyDate});
  final String title;
  final int carId;
  final String? notifyDate;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.025,vertical: 8),
      child: Column(
        children: [

          SizedBox(height: 10,),
          SizedBox(
            height: width * 0.116,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppLocalizations.of(context)!.events),
                CrashButton(
                  size: width * 0.0813,
                  imageName: AppImages.calender,
                  onTap: (){
                    context.read<CrashCubit>().showAllCrashes(type: 'ma',carId: 105);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            CalenderScreen(title: title,carId: carId,),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
          Expanded(
            child: BlocConsumer<CrashCubit,CrashState>(
              listener: (context,state){
              },
              builder: (context,state){
                if(state is CrashSuccess){
                  return ListView.builder(
                    itemCount: state.crashes.length,
                    itemBuilder: (context,idx){
                      return CrashItem(
                        title: title,
                        lrs: state.crashes[idx].speedBefore.toString(),
                        severity: state.crashes[idx].severity,
                        location: state.crashes[idx].location,
                        reason: state.crashes[idx].type,
                        date: state.crashes[idx].crashedAt,
                        notifyDate: notifyDate,
                      );
                    },
                  );
                }
                return Center(child: CircularProgressIndicator(),);
              },
            )
          )
        ],
      ),
    );
  }
}
