import 'package:black_box/features/drivers/presentation/widgets/driver_page/dialogues/add_driver_dialogue.dart';
import 'package:flutter/material.dart';


class AddDriverItem extends StatelessWidget {
  const AddDriverItem({super.key,required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return AddDriverDialogue();
          },
        );
      },
      child: Column(
        children: [
          Container(
            height: 200,
            width: 200,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Color(0xFF733436),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset("assets/plus.png", width: 39, height: 39),
          ),
          const SizedBox(height: 5),
          const Text(
            "Add Driver",
            style: TextStyle(
              color: Color(0xFF004444),
              fontWeight: FontWeight.bold,
              fontSize: 19,
            ),
          ),
        ],
      ),
    );
  }
}
