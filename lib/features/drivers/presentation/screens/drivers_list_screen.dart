import 'package:black_box/core/ui/widgets/search_items.dart';
import 'package:black_box/features/drivers/presentation/widgets/driver_page/driver_items_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/constants/colors.dart';
import '../../../home/presentation/widgets/stat_item.dart';
import '../cubit/driver/driver_cubit.dart';
import '../cubit/driver/driver_state.dart';


class DriversListScreen extends StatefulWidget {
  const DriversListScreen({super.key,required this.onNotificationTap});
  final void Function()? onNotificationTap;
  @override
  State<DriversListScreen> createState() => _DriversListScreenState();
}

class _DriversListScreenState extends State<DriversListScreen> {
  static const Color primaryRed = Color(0xFF9B0D15);
  final TextEditingController searchController = TextEditingController();
  int numberOfDrivers = 0;
  final formKey = GlobalKey<FormState>();
  Future<void> onRefresh() async {
    context.read<DriverCubit>().getAllDrivers();
  }

  @override
  void initState() {
    context.read<DriverCubit>().getAllDrivers();
    super.initState();
  }

  // void filterDrivers(String value) {
  //   setState(() {
  //     filteredDrivers = allDrivers
  //         .where((Driver) => Driver.toLowerCase().contains(value.toLowerCase()))
  //         .toList();
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: primaryRed,
      appBar: AppBar(
        backgroundColor: primaryRed,
        elevation: 0,
        toolbarHeight: 90,
        title: Text('View Cars', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: widget.onNotificationTap,
            child: const CircleAvatar(backgroundColor: Colors.white,radius: 18, child: Icon(Icons.notifications_none, color: AppColor.mainRedColor)),
          ),
          SizedBox(width: 20,)
        ],
      ),

      body: Column(
        children: [
          SizedBox(
              height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 15,),
                StatItem(
                    label: "Total  drivers",
                    value: "8",
                    valueColor: Colors.green,
                    arrowAngle: 135
                ),
                SizedBox(width: 35,),
                BlocListener<DriverCubit,DriverState>(
                  listener: (context,state){
                    if(state is DriverSuccess) numberOfDrivers = 5;//state.driversList.length;
                    setState(() {});
                  },
                  child: StatItem(
                      label: "Total active drivers",
                      value: numberOfDrivers.toString(),
                      valueColor: Colors.white,
                      arrowAngle: 135
                  ),
                ),
                SizedBox(width: 15,),
              ],
            ),
          ),
          SearchItems(searchController: searchController,hint: "Driver Id",),
          const SizedBox(height: 20),

          Expanded(
            child: Container(
              padding: const EdgeInsets.all(25),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
                ),
              ),
              child: RefreshIndicator(

                onRefresh: onRefresh,
                child: Container(),
                /*child: BlocConsumer<DriverCubit, DriverState>(
                    listener: (context,state){
                      if (state is DriverUpdated || state is DriverAdded || state is DriverDeleted) {
                        Future.delayed(Duration(seconds: 2),(){
                          context.read<DriverCubit>().getAllDrivers();
                        });
                      }
                    },
                    builder: (context, state) {
                      if (state is DriverFailure) {
                        return Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(state.message,style: TextStyle(fontSize: 18),),
                              IconButton(
                                icon: Icon(Icons.refresh,color: Colors.red,size: 30,),
                                onPressed: (){
                                  context.read<DriverCubit>().getAllDrivers();
                                },
                              )
                            ],
                          ),
                        );
                      }
                      else if (state is DriverSuccess) {
                        return DriverItemsGrid(state: state);
                      }
                      return Center(child: CircularProgressIndicator(),);
                    }
                ),*/
              ),
            ),
          ),
        ],
      ),
    );
  }
}
