import 'package:black_box/features/cars/presentation/widgets/car_page/dialogues/add_car_dialogue.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constants/global.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AddCarItem extends StatelessWidget {
  AddCarItem({super.key,required this.color});
  final TextEditingController driverIdController = TextEditingController();
  final TextEditingController makerController = TextEditingController();
  final TextEditingController modelController = TextEditingController();
  final TextEditingController yearController = TextEditingController();
  final TextEditingController plateNumberController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final Color color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return AddCarDialogue();
          },
        );
      },
      child: Column(
        children: [
          Container(
            height: width * .225,
            width: width * .235,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset("assets/plus.png", width: width * .09, height: width * .045),
          ),
          const SizedBox(height: 5),
          Text(
            AppLocalizations.of(context)!.car_add,
            style: TextStyle(
              color: Theme.of(context).colorScheme.onSurface,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
