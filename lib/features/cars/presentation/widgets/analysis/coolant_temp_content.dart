
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constants/global.dart';
import '../../../../../core/constants/images.dart';
import '../../../../../core/localization/generated/app_localizations.dart';
import '../../../../crashes/presentation/cubit/crash_cubit.dart';
import '../../../../crashes/presentation/cubit/crash_state.dart';
import '../../../../crashes/presentation/widgets/sub_widgets/crash_button.dart';
import '../../../../crashes/presentation/widgets/sub_widgets/crash_item.dart';

class CoolantTempContent extends StatelessWidget {
  const CoolantTempContent({super.key});

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
                CrashButton(size: width * 0.0813, imageName: AppImages.calender)
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
                          lrs: state.crashes[idx].speedBefore.toString(),
                          severity: state.crashes[idx].severity,
                          location: state.crashes[idx].location,
                          reason: state.crashes[idx].type,
                          date: state.crashes[idx].crashedAt,
                          type: 'coolant',
                          coolant: state.crashes[idx].coolantTemp.toString(),
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
