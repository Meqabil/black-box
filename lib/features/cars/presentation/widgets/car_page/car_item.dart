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
                CarDetailsScreen(onBackToHome: () {}, onNotificationTap: () {},carName: car.name,id: car.id.toString(),),
          ),
        );
      },
      onDoubleTap: (){
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => EditCarScreen(imageUrl : car.image ?? '',carId: car.id.toString(),name: car.name, vClass: car.vClass, plateNumber: car.plateNumber, driverId: car.driverId,))
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
          Stack(
            children: [
              Container(
                height: 97.63,
                width: 105,
                padding: car.image == '' ?  const EdgeInsets.all(15) : const EdgeInsets.all(0),
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: car.image == '' || car.image == null ? Image.asset(
                  "assets/traffic_jam.png",
                  width: 90,
                  height: 107,
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
              car.driverId != '' ? Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  height: 28,
                  width: 28,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: mainRedColor,
                    borderRadius: BorderRadius.circular(90)
                  ),
                  child: Image.asset("assets/concar.png",width: 15,height: 15,color: Colors.white,fit: BoxFit.contain,)
                ),
              ) : SizedBox()
            ],
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(car.name,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18,color: mainRedColor),
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
