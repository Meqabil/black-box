import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/constants/global.dart';
import '../../../../../../core/ui/widgets/dialoge_input.dart';
import '../../../cubit/driver/driver_cubit.dart';
import '../../../cubit/driver/driver_state.dart';

class AddDriverDialogue extends StatelessWidget {
  AddDriverDialogue({super.key,required});
  final formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController nationalNumberController = TextEditingController();
  final TextEditingController licenseNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      insetPadding: const EdgeInsets.all(30),
      child: SingleChildScrollView(
        child: BlocConsumer<DriverCubit,DriverState>(
            listener: (context,state){
              if(state is DriverAdded){
                Navigator.of(context).pop();
              }
            },
            builder: (context,state) {
              return Container(
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
                        "New Driver",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1A1A1A),
                        ),
                      ),
                      const SizedBox(height: 20),
                      DialogueInput(
                        hint: "# Name ",
                        controller: nameController,
                        validator: (val){
                          if (val == null || val.isEmpty) return "This Field can't be empty !";
                          return null;
                        },
                      ),
                      DialogueInput(
                        hint: '# Email',
                        controller: emailController,
                        validator: (val){
                          if (val == null || val.isEmpty) return "This Field can't be empty !";
                          return null;
                        },
                      ),
                      DialogueInput(
                        hint: '# Password',
                        controller: passwordController,
                        validator: (val){
                          if (val == null || val.isEmpty) return "This Field can't be empty !";
                          return null;
                        },
                      ),
                      DialogueInput(
                        hint: '# National ID',
                        controller: nationalNumberController,
                        validator: (val){
                          if (val == null || val.isEmpty) return "This Field can't be empty !";
                          return null;
                        },
                      ),

                      DialogueInput(
                        hint: '# License Number',
                        controller: licenseNumberController,
                        validator: (val){
                          if (val == null || val.isEmpty) return "This Field can't be empty !";
                          return null;
                        },
                      ),
                      DialogueInput(
                        hint: '# phone Number',
                        controller: phoneController,
                        validator: (val){
                          if (val == null || val.isEmpty) return "This Field can't be empty !";
                          return null;
                        },
                      ),

                      const SizedBox(height: 12,),
                      SizedBox(
                        height: 45,
                        width: 218,
                        child: ElevatedButton(
                          onPressed: () {
                            if(formKey.currentState!.validate()){
                              context.read<DriverCubit>().addDriver(
                                  name: nameController.text.trim(),
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
              );
            }
        ),
      ),
    );
  }
}
