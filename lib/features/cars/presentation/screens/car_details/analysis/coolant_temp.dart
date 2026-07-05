
import 'package:black_box/features/cars/domain/entities/car_entity.dart';
import 'package:black_box/features/cars/presentation/cubit/car/car_cubit.dart';
import 'package:black_box/features/cars/presentation/cubit/car/car_state.dart';
import 'package:black_box/features/cars/presentation/widgets/analysis/coolant_temp_content.dart';
import 'package:black_box/features/crashes/presentation/cubit/crash_cubit.dart';
import 'package:flutter/material.dart';
import 'package:black_box/core/localization/generated/app_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../core/constants/global.dart';
import '../../../../../../shared/widgets/notification_button.dart';
import '../../../../../home/presentation/widgets/stat_item.dart';
import '../../../widgets/analysis/road_bump_content.dart';

class CoolantTemp extends StatefulWidget {
  const CoolantTemp({
    super.key,
    required this.car,
  });
  final CarEntity car;

  @override
  State<CoolantTemp> createState() => _CoolantTempState();
}




class _CoolantTempState extends State<CoolantTemp> {
  final TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    context.read<CrashCubit>().showAllCrashes(carId: widget.car.id,type: "coolant");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: width * 0.186,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${widget.car.name} : ${widget.car.id}',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        centerTitle: true,
        actions: [
          Padding(
              padding: const EdgeInsets.only(top: 10, right: 20),
              child: NotificationButton()
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: width * 0.045 / 5),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: Row(
              children: [
                StatItem(
                  label: AppLocalizations.of(context)!.total_active_cars,
                  value:"1",
                  valueColor:Colors.white,
                  arrowAngle: 135,
                ),
                Container(
                  width: 2,
                  height: 40,
                  color: const Color(0xFFDFF7E2),
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                ),
                BlocBuilder<CarCubit,CarState>(
                    builder: (context,state) {
                      if(state is CarSuccess){
                        return StatItem(
                          label: AppLocalizations.of(context)!.total_cars,
                          value: state.carsList.length.toString(),
                          valueColor:  Color(0xFF0068FF),
                          arrowAngle: -135,
                        );
                      }
                      return StatItem(
                        label: AppLocalizations.of(context)!.total_cars,
                        value: "0",
                        valueColor:  Color(0xFF0068FF),
                        arrowAngle: -135,
                      );
                    }
                ),
              ],
            ),
          ),
          const SizedBox(height: 65),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.only(top: 30, left: 25, right: 25),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Column(
                children: [
                  Expanded(
                      child: CoolantTempContent()
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
