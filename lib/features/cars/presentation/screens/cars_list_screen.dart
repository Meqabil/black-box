
import 'package:black_box/features/cars/presentation/cubit/car/car_cubit.dart';
import 'package:black_box/features/cars/presentation/widgets/car_page/car_items_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/constants/global.dart';
import '../../../../shared/widgets/notification_button.dart';
import '../../../../shared/widgets/search_items.dart';
import '../../../home/presentation/widgets/stat_item.dart';
import '../cubit/car/car_state.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CarsListScreen extends StatefulWidget {
  const CarsListScreen({
    super.key,
  });
  @override
  State<CarsListScreen> createState() => _CarListScreenState();
}

class _CarListScreenState extends State<CarsListScreen> {
  final TextEditingController searchController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  int totalCars = 0;
  @override
  void initState(){
    super.initState();
    context.read<CarCubit>().getAllCars();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        leading: null,
        elevation: 0,
        toolbarHeight: width * .18,
        title: Text(AppLocalizations.of(context)!.car_view_all, style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: [
          NotificationButton(),
          SizedBox(width: width * .045,)
        ],
      ),

      body: Column(
        children: [
          Container(
            height: height * .22,
            width: width,
            padding: EdgeInsets.all(width * .045),
            child: Column(
              children: [
                Container(

                  padding: EdgeInsets.symmetric(vertical: width * .045, horizontal: width * .055),
                  child: Row(

                    children: [
                      StatItem(
                        label: AppLocalizations.of(context)!.total_active_cars,
                        value:"1",
                        valueColor: Colors.white,
                        arrowAngle: 135,
                      ),
                      Container(
                        width: 2,
                        height: width * .09,
                        color: const Color(0xFFDFF7E2),
                        margin: EdgeInsets.symmetric(horizontal: width * .09),
                      ),
                      StatItem(
                        label:AppLocalizations.of(context)!.total_cars,
                        value:"$totalCars",
                        valueColor:const Color(0xFF0068FF),
                        arrowAngle: -135,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: width * .045/4),
                SearchItems(
                  searchController: searchController,
                  hint: AppLocalizations.of(context)!.car_plate,
                  onChanged: (val){
                    context.read<CarCubit>().searchCars(val);
                  },
                ),
                SizedBox(height: width * .022),
              ],
            ),
          ),

          Expanded(
            child: RefreshIndicator(
              onRefresh: () async{
                context.read<CarCubit>().getAllCars();
              },
              child: Container(
                width: width,
                padding: EdgeInsets.all(width * .052),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                    topRight: Radius.circular(70),
                  ),
                ),
                child: BlocConsumer<CarCubit,CarState>(
                  listener: (context,state){
                    if(state is CarSuccess){
                      setState(() {
                        totalCars = state.carsList.length;
                      });
                    }
                  },
                  builder: (context,state) {
                    if(state is CarUpdated){
                      Future.delayed(Duration(seconds: 1),() {
                        context.read<CarCubit>().getAllCars();
                      },);
                    }
                    if(state is CarDeleted){
                      Future.delayed(Duration(seconds: 1),() {
                        context.read<CarCubit>().getAllCars();
                      },);
                    }

                    if(state is CarFailure){
                      return Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(state.message,style: TextStyle(fontSize: width * 0.04,),),
                            IconButton(
                              icon: Icon(Icons.refresh,color: Colors.red,size: width * .065,),
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