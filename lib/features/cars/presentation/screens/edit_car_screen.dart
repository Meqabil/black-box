import 'dart:io';

import 'package:black_box/core/constants/colors.dart';
import 'package:black_box/core/constants/global.dart';
import 'package:black_box/features/cars/presentation/cubit/car/car_cubit.dart';
import 'package:black_box/features/cars/presentation/cubit/car/car_state.dart';
import 'package:black_box/features/drivers/presentation/widgets/edit_driver/edit_info_input.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditCarScreen extends StatefulWidget {
  final String carId;
  final String name;
  final String vClass;
  final String plateNumber;
  final String driverId;
  final String imageUrl;

  const EditCarScreen({
    super.key,
    required this.carId,
    required this.name,
    required this.vClass,
    required this.plateNumber,
    required this.driverId,
    required this.imageUrl,
  });

  @override
  State<EditCarScreen> createState() => _EditCarScreenState();
}


class _EditCarScreenState extends State<EditCarScreen> {
  static const Color primaryRed = Color(0xFF9B0D15);
  static const Color lightRed = Color(0xFFE27C76);
  static const Color oceanRed = Color(0xFF6E0000);

  late TextEditingController carController;
  late TextEditingController nameController;
  late TextEditingController vClassController;
  late TextEditingController plateController;
  late TextEditingController driverController;
  late TextEditingController yearController;
  File? file;
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();

    carController = TextEditingController(text: widget.carId);
    nameController = TextEditingController(text: widget.name);
    vClassController = TextEditingController(text: widget.vClass);
    plateController = TextEditingController(text: widget.plateNumber);
    driverController = TextEditingController(text: widget.driverId);
  }

  @override
  void dispose() {
    nameController.dispose();
    vClassController.dispose();
    plateController.dispose();
    driverController.dispose();
    yearController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: primaryRed,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Edit Car",
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            width: MediaQuery.sizeOf(context).width - 50,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                widget.imageUrl == '' ?
                    file == null ?
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 2,horizontal: 15),
                  child: Image.asset("assets/edit_car.png",height: 140,),
                ) :
                    Positioned(
                      bottom: 15,
                      child: Container(
                        width: MediaQuery.sizeOf(context).width - 65,
                        height: 150,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(15) ,
                            child: Image.file(file!,height: 140,width: double.infinity,fit: BoxFit.cover,)
                        ),
                      ),
                    )
                  :
                Positioned(
                  bottom: 15,
                  child: Container(
                    width: MediaQuery.sizeOf(context).width - 65,
                    height: 150,
                    decoration: BoxDecoration(

                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(15) ,
                        child: Image.network(widget.imageUrl,height: 140,width: double.infinity,fit: BoxFit.cover,)
                    ),
                  ),
                ),
                Positioned(
                  right: widget.imageUrl == '' ? 15 : 1,
                  bottom: 0,
                  child: ElevatedButton(
                    onPressed: () async{
                      file = await pickImages(context);
                      setState(() {});
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(120, 25)
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("Edit Image ",style: TextStyle(fontSize: 10),),
                        Icon(Icons.edit,color: mainRedColor,size: 12,),
                      ],
                    )
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.all(25),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
                ),
              ),
              child: Form(
                key: formKey,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      EditInfoInput(
                        hint: "# Car ID",
                        controller: carController,
                        validator: (val) {
                          if (val == null || val.isEmpty) return "Field can't be empty";
                          if (int.tryParse(val) == null) return "Driver ID must be a number";
                          return null;
                        },
                      )
                      ,EditInfoInput(
                        hint: "# Driver ID",
                        controller: driverController,
                        validator: (val) {
                          if (val == null || val.isEmpty) return "Field can't be empty";
                          if (int.tryParse(val) == null) return "Driver ID must be a number";
                          return null;
                        },
                      ),
                      EditInfoInput(
                        hint: '# Car namer',
                        controller: nameController,
                        validator: (val) => val!.isEmpty ? "Field can't be empty" : null,
                      ),
                      EditInfoInput(
                        hint: '# Car vClass',
                        controller: vClassController,
                        validator: (val) => val!.isEmpty ? "Field can't be empty" : null,
                      ),
                      EditInfoInput(
                        hint: '# Car Year',
                        controller: yearController,
                        validator: (val) {
                          if (val == null || val.isEmpty) return "Field can't be empty";

                          final year = int.tryParse(val);
                          if (year == null) return "Enter a valid year";
                          if (year < 1900 || year > DateTime.now().year) {
                            return "Year must be between 1900 and now";
                          }
                          return null;
                        },
                      ),
                      EditInfoInput(
                        hint: '# Plate Number',
                        controller: plateController,
                        validator: (val) => val!.isEmpty ? "Field can't be empty" : null,
                      ),
                      const SizedBox(height: 25),
                      SizedBox(
                        width: double.infinity,
                        height: 55,
                        child: BlocListener<CarCubit,CarState>(
                          listener: (context,state){
                            if(state is CarUpdated){
                              Navigator.of(context).pop();
                            }
                          },
                          child: ElevatedButton(
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                context.read<CarCubit>().updateCar(
                                    carId: int.parse(carController.text.trim()),
                                    driverId: driverController.text.trim(),
                                    name: nameController.text.trim(),
                                    vClass: vClassController.text.trim(),
                                    plateNumber: plateController.text.trim(),
                                    image: file
                                );
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: oceanRed,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(90),
                              ),
                            ),
                            child: const Text(
                              "Update ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      SizedBox(
                        width: double.infinity,
                        height: 55,
                        child: ElevatedButton(
                          onPressed: () => Navigator.pop(context),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: lightRed,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(90),
                            ),
                          ),
                          child: const Text(
                            "Cancel",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
