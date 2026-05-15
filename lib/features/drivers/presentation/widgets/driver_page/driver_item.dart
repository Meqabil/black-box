
import 'package:black_box/features/drivers/domain/entities/driver_entity.dart';
import 'package:black_box/features/drivers/presentation/widgets/driver_page/dialogues/delete_driver_dialogue.dart';
import 'package:flutter/material.dart';
import '../../../../../core/theme/app_color.dart';

import '../../screens/edit_driver_screen.dart';

class DriverItem extends StatefulWidget {
  const DriverItem({super.key,required this.driver});
  final DriverEntity driver;
  @override
  State<DriverItem> createState() => _DriverItemState();
}

class _DriverItemState extends State<DriverItem> {

  @override
  void initState() {
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
            EditDriverScreen(
                id: widget.driver.id,
                name: widget.driver.name,
            )));
      },
      onLongPress: () {
        showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context){
              return DeleteDriverDialogue(driver: widget.driver);
            }
        );
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Color(0xFF8A1D2B),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  padding: EdgeInsets.only(top: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(90),
                    color: Colors.grey,
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(90),
                      child: Image.asset("assets/driver.png", fit: BoxFit.fitHeight,
                        width: 90,
                        height: 90,)
                  ),
                ),
              ],
            ),
            Spacer(),
            const SizedBox(height: 5),
            Text(
              widget.driver.name == '' ? "Unknown" : widget.driver.name,
              style: const TextStyle(fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 18,
                  overflow: TextOverflow.ellipsis),
            ),
            const SizedBox(height: 1),
            Text(
              "Id : ${widget.driver.id}",
              style: const TextStyle(fontWeight: FontWeight.bold,
                  color: AppColor.textFieldColor,
                  fontSize: 16),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
