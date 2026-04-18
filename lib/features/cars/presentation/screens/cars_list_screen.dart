import 'package:black_box/features/cars/presentation/cubit/car/car_cubit.dart';
import 'package:black_box/features/cars/presentation/widgets/car_page/car_items_grid.dart';
import 'package:black_box/core/ui/widgets/search_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/constants/colors.dart';
import '../cubit/car/car_state.dart';
import '../widgets/car_page/state_item.dart';

class CarListScreen extends StatefulWidget {
  final VoidCallback onBackToHome;
  final VoidCallback onNotificationTap;
  const CarListScreen({
    super.key,
    required this.onBackToHome,
    required this.onNotificationTap,
  });
  @override
  State<CarListScreen> createState() => _CarListScreenState();
}

class _CarListScreenState extends State<CarListScreen> {
  final TextEditingController searchController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  void initState(){
    super.initState();
    context.read<CarCubit>().getAllCars();
  }
  // void filterCars(String value) {
  //   setState(() {
  //     filteredCars = allCars
  //         .where((driver) => driver.toLowerCase().contains(value.toLowerCase()))
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
          Container(
            padding: const EdgeInsets.all(6),
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: GestureDetector(
              onTap: widget.onNotificationTap,
              child: Icon(
                Icons.notifications_none,
                color: mainRedColor,
                size: 24,
              ),
            ),
          ),
          SizedBox(width: 20,)
        ],
      ),

      body: Column(
        children: [
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: Row(
              children: [
                StateItem(
                  label:"Total Active Cars",
                  value:"1",
                  valueColor: Colors.white,
                  arrowAngle: 135,
                ),
                Container(
                  width: 2,
                  height: 40,
                  color: const Color(0xFFDFF7E2),
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                ),
                StateItem(
                  label:"Total Cars",
                  value:"8",
                  valueColor:const Color(0xFF0068FF),
                  arrowAngle: -135,
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          SearchItems(searchController: searchController,hint: "Car Id",),
          const SizedBox(height: 20),

          Expanded(
            child: RefreshIndicator(
              onRefresh: () async{
                context.read<CarCubit>().getAllCars();
              },
              child: Container(
                padding: const EdgeInsets.all(25),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                child: BlocBuilder<CarCubit,CarState>(
                  builder: (context,state) {
                    if(state is CarUpdated){
                      context.read<CarCubit>().getAllCars();
                    }
                    if(state is CarFailure){
                      return Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(state.message,style: TextStyle(fontSize: 16,),),
                            IconButton(
                              icon: Icon(Icons.refresh,color: Colors.red,size: 30,),
                              onPressed: (){
                                context.read<CarCubit>().getAllCars();
                              },
                            )
                          ],
                        ),
                      );
                    }
                    else if(state is CarSuccess){
                      return CarItemsGrid(state: state);
                    }
                    else if(state is CarWarning){
                      return CarItemsGrid(state: state);
                    }
                    return Center(child: CircularProgressIndicator(),);
                  }
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}