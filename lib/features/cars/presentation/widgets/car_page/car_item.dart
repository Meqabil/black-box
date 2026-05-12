import 'package:black_box/features/cars/presentation/widgets/car_page/dialogues/delete_car_dialogue.dart';
import 'package:flutter/material.dart';
import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/global.dart';
import '../../../domain/entities/car_entity.dart';
import '../../screens/car_details/car_details.dart';
import '../../screens/edit_car_screen.dart';

class CarItem extends StatelessWidget {
  const CarItem({super.key, required this.context, required this.color, required this.id, required this.car});
  final BuildContext context;
  final Color color;
  final String id;
  final CarEntity car;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                CarDetailsScreen(car:car),
          ),
        );
      },
      onLongPress: (){
        showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context){
              return DeleteCarDialogue(car: car);
            }
        );
      },
      child: Column(
        children: [
          Container(
            width: width * 0.235,
            height: width * 0.221,
            padding: car.image == '' ?  const EdgeInsets.all(15) : const EdgeInsets.all(0),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(20),
            ),
            child: car.image == '' || car.image == null ? Image.asset(
              "assets/traffic_jam.png",
              width: width * .2025,
              height: width * .2025,
              color: Colors.white,
              fit: BoxFit.fill,
            ) : ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                car.image ?? '',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),

          SizedBox(height: width * .045/4),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(car.name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14,color: Theme.of(context).splashColor),
              ),
            ],
          ),
          Text(car.plateNumber,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 11,color: Colors.red),
          ),
        ],
      ),
    );
  }
}
