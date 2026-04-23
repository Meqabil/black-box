import 'package:black_box/features/cars/presentation/widgets/car_page/dialogues/delete_car_dialogue.dart';
import 'package:flutter/material.dart';
import '../../../../../core/constants/colors.dart';
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
                CarDetailsScreen(onBackToHome: () {}, onNotificationTap: () {},car:car),
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
            width: 105,
            height: 91.63,
            padding: car.image == '' ?  const EdgeInsets.all(15) : const EdgeInsets.all(0),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(20),
            ),
            child: car.image == '' || car.image == null ? Image.asset(
              "assets/traffic_jam.png",
              width: 90,
              height: 90,
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

          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(car.name,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14,color: mainRedColor),
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
