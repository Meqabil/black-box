import 'package:black_box/core/ui/widgets/search_items.dart';
import 'package:black_box/features/drivers/presentation/widgets/driver_page/driver_items_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/constants/colors.dart';
import '../cubit/driver/driver_cubit.dart';
import '../cubit/driver/driver_state.dart';


class DriverScreen extends StatefulWidget {
  const DriverScreen({super.key});
  @override
  State<DriverScreen> createState() => _DriverScreenState();
}

class _DriverScreenState extends State<DriverScreen> {
  @override
  Widget build(BuildContext context) {
    return DriverListScreen();
  }
}

class DriverListScreen extends StatefulWidget {
  const DriverListScreen({super.key});
  @override
  State<DriverListScreen> createState() => _DriverListScreenState();
}

class _DriverListScreenState extends State<DriverListScreen> {
  static const Color primaryRed = Color(0xFF9B0D15);

  final TextEditingController searchController = TextEditingController();
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
          Container(
            padding: const EdgeInsets.all(6),
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: GestureDetector(
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
          const SizedBox(height: 100),
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
                child: BlocConsumer<DriverCubit, DriverState>(
                    listener: (context,state){
                      if (state is DriverUpdated || state is DriverAdded || state is DriverDeleted) {
                        context.read<DriverCubit>().getAllDrivers();
                      }
                    },
                    builder: (context, state) {
                      if (state is DriverFailure) {
                        return Center(
                          child: Text(state.message),
                        );
                      }
                      else if (state is DriverSuccess) {
                        return DriverItemsGrid(state: state);
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
/*

BlocBuilder<CarCubit,CarState>(
  builder: (context,state) {
    if(state is CarUpdated){
      context.read<CarCubit>().getAllCars();
    }
    if(state is CarFailure){
      return Center(
        child: Text(state.message),
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
)
 */