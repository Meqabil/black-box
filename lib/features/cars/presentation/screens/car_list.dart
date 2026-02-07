import 'package:black_box/features/cars/data/models/car_model.dart';
import 'package:black_box/features/cars/domain/entities/car_entity.dart';
import 'package:black_box/features/cars/presentation/cubit/car/car_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/global.dart';
import '../cubit/car/car_state.dart';
import 'car_ditail/car_ditail.dart';

class CarListScreen extends StatefulWidget {
  final VoidCallback onBackToHome;
  final VoidCallback onNotificationTap;

  const CarListScreen({
    super.key,
    required this.onBackToHome,
    required this.onNotificationTap,
  });
  @override
  State<CarListScreen> createState() => _CarListScreenState();
}

class _CarListScreenState extends State<CarListScreen> {
  static const Color primaryRed = Color(0xFF9B0D15);
  static const Color lightRed = Color(0xFFE27C76);
  static const Color oceanRed = Color(0xFF6E0000);

  final TextEditingController searchController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  loadCars() async{
    await context.read<CarCubit>().getAllCars();
    //filteredCars = allCars;
  }
  @override
  void initState(){
    loadCars();
    super.initState();
  }

  // void filterCars(String value) {
  //   setState(() {
  //     filteredCars = allCars
  //         .where((car) => car.toLowerCase().contains(value.toLowerCase()))
  //         .toList();
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: primaryRed,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 80,

        leading: Transform.translate(
          offset: const Offset(0, 25),
          child: GestureDetector(
            onTap: (){

            },
            child: const Icon(Icons.arrow_back, color: Colors.transparent),
          ),
        ),

        title: Transform.translate(
          offset: const Offset(0, 25),
          child: const Text('View Cars', style: TextStyle(color: Colors.white)),
        ),

        centerTitle: true,

        actions: [
          Transform.translate(
            offset: const Offset(0, 10),
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: GestureDetector(
                onTap: widget.onNotificationTap,
                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.notifications_none,
                    color: primaryRed,
                    size: 24,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),

      body: Column(
        children: [
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: Row(
              children: [
                _buildStatItem(
                  "Total Active Cars",
                  "1",
                  Colors.white,
                  arrowAngle: 135,
                ),
                Container(
                  width: 2,
                  height: 40,
                  color: const Color(0xFFDFF7E2),
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                ),
                _buildStatItem(
                  "Total Cars",
                  "8",
                  const Color(0xFF0068FF),
                  arrowAngle: -135,
                ),
              ],
            ),
          ),

          const SizedBox(height: 10),

          Container(
            height: 45,
            width: MediaQuery.sizeOf(context).width - 80,
            decoration: BoxDecoration(
              color: const Color(0xFF052224),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Search",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF0FFF0),
                      borderRadius: BorderRadius.circular(23),
                    ),
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextField(
                      controller: searchController,

                      textAlign: TextAlign.right,
                      decoration: const InputDecoration(
                        hintText: "Car Id",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontStyle: FontStyle.italic,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

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
              child: BlocBuilder<CarCubit,CarState>(
                builder: (context,state) {
                  if(state is CarFailure){
                    return Center(
                      child: Text(state.message),
                    );
                  }
                  else if(state is CarSuccess){
                    return GridView.builder(
                      itemCount: state.carsList.length + 1,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20,
                        childAspectRatio: 0.8,
                      ),
                      itemBuilder: (context, index) {
                        if (index < state.carsList.length) {
                          return _buildCarItem(
                              context,
                              index == 0 ? oceanRed : lightRed,
                              state.carsList[index].id.toString(),
                              state.carsList[index]
                          );
                        } else {
                          return _buildAddCarItem(context, lightRed);
                        }
                      },
                    );
                  }
                  return Center(child: CircularProgressIndicator(),);
                }
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatItem(
    String label,
    String value,
    Color valueColor, {
    double arrowAngle = 0,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 20,
              height: 20,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Transform.rotate(
                angle: arrowAngle * 3.1416 / 180,
                child: const Icon(
                  Icons.arrow_back_outlined,
                  size: 16,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(width: 5),
            Text(
              label,
              style: const TextStyle(color: Colors.white, fontSize: 12),
            ),
          ],
        ),
        Text(
          value,
          style: TextStyle(
            color: valueColor,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildCarItem(BuildContext context, Color color, String id,CarEntity car) {
    return GestureDetector(
      onTap: () {

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                CarDitialScreen(onBackToHome: () {}, onNotificationTap: () {},carName: car.make,ID: car.id.toString(),),
          ),
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
            child: Image.asset("assets/traffic_jam.png", width: 90, height: 107,color: Colors.white,fit: BoxFit.fill,),
          ),
          const SizedBox(height: 5),
          Text(
            "#${car.id}",
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
          ),
        ],
      ),
    );
  }

  Widget _buildAddCarItem(BuildContext context, Color color) {
    TextEditingController driverIdController = TextEditingController();
    TextEditingController makerController = TextEditingController();
    TextEditingController modelController = TextEditingController();
    TextEditingController yearController = TextEditingController();
    TextEditingController plateNumberController = TextEditingController();
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              insetPadding: const EdgeInsets.all(30),
              child: SingleChildScrollView(
                child: Container(
                  width: 339,
                  constraints: BoxConstraints(minHeight: 535,maxHeight: 800),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Form(
                    key: formKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          "New Car",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF1A1A1A),
                          ),
                        ),
                        const SizedBox(height: 20),
                        carDialogueInput(
                          hint: "# Driver ID",
                          controller: driverIdController,
                          validator: validCarInputDialogue(driverIdController.text),
                        ),
                        carDialogueInput(
                          hint: '# Car Maker',
                          controller: makerController,
                          validator: validCarInputDialogue(makerController.text),
                        ),

                        carDialogueInput(
                          hint: '# Car Model',
                          controller: modelController,
                          validator: validCarInputDialogue(modelController.text),
                        ),
                        carDialogueInput(
                          hint: '# Car Year',
                          controller: yearController,
                          validator: validCarInputDialogue(yearController.text),
                        ),

                        carDialogueInput(
                            hint: '# Plate Number',
                          controller: plateNumberController,
                          validator: validCarInputDialogue(plateNumberController.text),
                        ),

                        const SizedBox(height: 12,),
                        SizedBox(
                          height: 45,
                          width: 218,
                          child: ElevatedButton(
                            onPressed: () {
                              if(formKey.currentState!.validate()){
                                context.read<CarCubit>().addCar(
                                    token: token,
                                    id: int.parse(driverIdController.text.trim()),
                                    make: makerController.text.trim(),
                                    model: modelController.text.trim(),
                                    plateNumber: plateNumberController.text.trim(),
                                    year: yearController.text.trim()
                                );
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFA3000B),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(90),
                              ),
                              minimumSize: const Size(double.infinity, 50),
                            ),
                            child: const Text(
                              "Save",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          height: 45,
                          width: 218,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFF8DADA),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(90),
                              ),
                              minimumSize: const Size(double.infinity, 50),
                            ),
                            child: const Text(
                              "Cancel",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
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

String? Function(String?)? validCarInputDialogue(String text){
  if(text.isEmpty) return (text) => "This field can't be empty !";
  return null;
}

Widget carDialogueInput({
  String? hint,
  required TextEditingController controller,
  String? Function(String?)? validator,bool? readOnly}){
  return Container(
    alignment: Alignment.bottomCenter,
    width: double.infinity,
    constraints: BoxConstraints(minHeight: 50,maxHeight: 55),
    padding: EdgeInsets.symmetric(horizontal: 1,vertical: 4),
    child: TextFormField(
      readOnly: readOnly ?? false,
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        constraints: BoxConstraints(maxHeight: 55,minHeight: 50),
        hintText: hint ?? "",
        hintStyle: TextStyle(fontSize: 13),
        filled: true,
        fillColor: const Color(0xFFF8DADA),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(90),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 20,
        ),
      ),
    ),
  );
}