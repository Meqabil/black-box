import 'package:black_box/core/localization/generated/app_localizations.dart';
import 'package:black_box/features/analysis/presentation/widgets/crash_item_calender.dart';
import 'package:black_box/shared/widgets/notification_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/theme/app_color.dart';
import '../crashes/presentation/cubit/crash_cubit.dart';
import '../crashes/presentation/cubit/crash_state.dart';
class CalenderScreen extends StatefulWidget {
  const CalenderScreen({super.key,required this.title,required this.carId});
  final String title;
  final int carId;
  @override
  State<CalenderScreen> createState() => _CalenderScreenState();
}

class _CalenderScreenState extends State<CalenderScreen> {
  DateTime date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppColor.mainRedColor,
      appBar: AppBar(
        //toolbarHeight: 80,
        title: Text(widget.title == '' ? "Crashes" : widget.title,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: AppColor.mainRedColor,
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          NotificationButton(),
          SizedBox(width: 20,)
        ],
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Container(
              height: 80,
              padding: const EdgeInsets.all(20.0),
              width: MediaQuery.sizeOf(context).width,
              child: Column(
                children: [],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                child: SingleChildScrollView(

                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: [
                      CalendarDatePicker(
                        initialDate: DateTime.now(),
                        firstDate: DateTime(DateTime.january),
                        lastDate: DateTime.now(),
                        onDateChanged: (v){
                          date = v;
                          print(v);
                        }
                      ),
                      MaterialButton(
                        color: AppColor.mainRedColor,
                        padding: EdgeInsets.symmetric(horizontal: 65,vertical: 2),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                        onPressed: (){
                          context.read<CrashCubit>().showAllCrashes(type: widget.title,);
                        },
                        child: Text("Search",style: TextStyle(color: Colors.white,fontSize: 18),),
                      ),
                      SizedBox(height: 40,),
                      Row(
                        children: [

                        ],
                      ),
                      //Text("in 100 km/h zone")
                      BlocBuilder<CrashCubit,CrashState>(
                        
                        builder: (context,state){
                          if(state is CrashSuccess){
                            print("*****************************0");
                            print("*****************************0");
                            print(state.crashes.length);
                            print("*****************************0");
                            print("*****************************0");
                            return ListView.builder(
                              itemCount: state.crashes.length,
                              shrinkWrap: true,
                              itemBuilder: (context,idx){
                                print(state.crashes[idx].crashedAt + date.toString());

                                return CrashItemCalender(
                                    title: widget.title,
                                    lrs: state.crashes[idx].speedBefore.toString(),
                                    severity: state.crashes[idx].severity,
                                    location: state.crashes[idx].location,
                                    reason: state.crashes[idx].type,
                                    date: state.crashes[idx].crashedAt,
                                    selectedDate: date.toString(),
                                );
                              },
                            );
                          }
                          return Center(child: CircularProgressIndicator(),);
                        },
                      )
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

