import 'package:black_box/features/cars/presentation/widgets/car_page/dialogues/add_car_dialogue.dart';
import 'package:flutter/material.dart';


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
            height: 97.63,
            width: 105,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset("assets/plus.png", width: 39, height: 39),
          ),
          const SizedBox(height: 5),
          const Text(
            "Add Car",
            style: TextStyle(
              color: Color(0xFF004444),
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
