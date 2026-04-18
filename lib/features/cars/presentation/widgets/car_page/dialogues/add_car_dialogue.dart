import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/constants/global.dart';
import '../../../../../../core/ui/widgets/dialoge_input.dart';
import '../../../cubit/car/car_cubit.dart';
import '../../../cubit/car/car_state.dart';

class AddCarDialogue extends StatelessWidget {
  AddCarDialogue({super.key});
  final TextEditingController driverIdController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController vClassController = TextEditingController();
  final TextEditingController plateNumberController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      insetPadding: const EdgeInsets.all(30),
      child: SingleChildScrollView(
        child: BlocConsumer<CarCubit,CarState>(
            listener: (context,state){
              if(state is CarAdded){
                Navigator.of(context).pop();
              }
            },
            builder: (context,state){
              return Container(
                width: 339,
                constraints: BoxConstraints(minHeight: 505,maxHeight: 600),
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
                      DialogueInput(
                        hint: "# Driver ID",
                        controller: driverIdController,
                        validator: (val){
                          if (val == null || val.isEmpty) return "This Field can't be empty !";
                          if(int.tryParse(val) == null) return "Driver Id should be number !";
                          return null;
                        },
                      ),
                      DialogueInput(
                        hint: '# Car Maker',
                        controller: nameController,
                        validator: (val){
                          if (val == null || val.isEmpty) return "This Field can't be empty !";
                          return null;
                        },
                      ),
                      DialogueInput(
                        hint: '# Car Class',
                        controller: vClassController,
                        validator: (val){
                          if (val == null || val.isEmpty) return "This Field can't be empty !";
                          return null;
                        },
                      ),
                      DialogueInput(
                        hint: '# Plate Number',
                        controller: plateNumberController,
                        validator: (val){
                          if (val == null || val.isEmpty) return "This Field can't be empty !";
                          return null;
                        },
                      ),
                      const SizedBox(height: 12,),
                      (state is! CarLoading) ? SizedBox(
                        height: 45,
                        width: 218,
                        child: ElevatedButton(
                          onPressed: () {
                            if(formKey.currentState!.validate()){
                              context.read<CarCubit>().addCar(
                                  token: token,
                                  id: int.parse(driverIdController.text.trim()),
                                  name: nameController.text.trim(),
                                  vClass: vClassController.text.trim(),
                                  plateNumber: plateNumberController.text.trim(),

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
                      ) : SizedBox(),
                      const SizedBox(height: 10),
                      (state is! CarLoading) ?  SizedBox(
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
                      ) : SizedBox(),
                      (state is CarWarning) ? Spacer() : SizedBox(),
                      (state is CarWarning) ? Container(
                        width: double.infinity,
                        height: 50,
                        alignment: Alignment.centerLeft,
                        child: Text("Warning : ${state.message} !",style: TextStyle(color:Colors.red),),) : Container(),
                      (state is CarLoading) ? Center(child: CircularProgressIndicator(),) : SizedBox()
                    ],
                  ),
                ),
              );
            }
        ),
      ),
    );
  }
}
