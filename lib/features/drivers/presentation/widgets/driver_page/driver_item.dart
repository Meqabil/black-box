import 'package:black_box/core/constants/global.dart';
import 'package:black_box/features/drivers/domain/entities/driver_entity.dart';
import 'package:black_box/features/drivers/presentation/widgets/driver_page/dialogues/delete_driver_dialogue.dart';
import 'package:flutter/material.dart';
import '../../../../../core/constants/colors.dart';

import '../../screens/edit_driver_screen.dart';

class DriverItem extends StatefulWidget {
  const DriverItem({super.key,required this.driver});
  final DriverEntity driver;
  @override
  State<DriverItem> createState() => _DriverItemState();
}

class _DriverItemState extends State<DriverItem> {
  checkConnectingState() async{
    return await isDriverConnectedToCar(widget.driver.id);
  }
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
                Positioned(
                  bottom: 0,
                  right: 8,
                  child: FutureBuilder(
                      future: checkConnectingState(),
                      builder: (context,snap){
                        if(snap.data != null && snap.data != false){
                          return Icon(Icons.directions_car_filled,color: Colors.white,size: 25,);
                        }
                        return SizedBox();
                      }
                  )
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
                  color: textFieldColor,
                  fontSize: 16),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
