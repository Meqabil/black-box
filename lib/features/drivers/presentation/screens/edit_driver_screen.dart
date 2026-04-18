import 'package:black_box/features/drivers/presentation/cubit/driver/driver_cubit.dart';
import 'package:black_box/features/drivers/presentation/cubit/driver/driver_state.dart';
import 'package:black_box/features/drivers/presentation/widgets/edit_driver/edit_info_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditDriverScreen extends StatefulWidget {
  final int id;
  final String name;
  final String email;
  final String phone;
  final String nationalNumber;
  final String licenseNumber;

  const EditDriverScreen({
    super.key,
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.nationalNumber,
    required this.licenseNumber,
  });

  @override
  State<EditDriverScreen> createState() => _EditDriverScreenState();
}


class _EditDriverScreenState extends State<EditDriverScreen> {
  static const Color primaryRed = Color(0xFF9B0D15);
  static const Color lightRed = Color(0xFFE27C76);
  static const Color oceanRed = Color(0xFF6E0000);

  late TextEditingController idController;
  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController phoneController;
  late TextEditingController nationalController;
  late TextEditingController licenseController;

  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();

    idController = TextEditingController(text: "Driver ID : ${widget.id}");
    nameController = TextEditingController(text: widget.name);
    emailController = TextEditingController(text: widget.email);
    phoneController = TextEditingController(text: widget.phone);
    nationalController = TextEditingController(text: widget.nationalNumber);
    licenseController = TextEditingController(text: widget.licenseNumber);
  }

  @override
  void dispose() {
    idController.dispose();
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    nationalController.dispose();
    licenseController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryRed,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Edit Driver",
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
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
                        hint: "# Driver ID",
                        controller: idController,
                        readOnly: true,

                      )
                      ,EditInfoInput(
                        hint: "# Name",
                        controller: nameController,
                        validator: (val) {
                          if (val == null || val.isEmpty) return "Field can't be empty";
                          return null;
                        },
                      ),
                      EditInfoInput(
                        hint: '# Email',
                        controller: emailController,
                        validator: (val) => val!.isEmpty ? "Field can't be empty" : null,
                      ),
                      EditInfoInput(
                        hint: '# phone number',
                        controller: phoneController,
                        validator: (val) => val!.isEmpty ? "Field can't be empty" : null,
                      ),
                      EditInfoInput(
                        hint: '# License',
                        controller: licenseController,
                        validator: (val) {
                          if (val == null || val.isEmpty) return "Field can't be empty";
                          final year = int.tryParse(val);
                          if (year == null) return "License number contain only digits";
                          return null;
                        },
                      ),
                      EditInfoInput(
                        hint: '# National ID',
                        controller: nationalController,
                        validator: (val) => val!.isEmpty ? "Field can't be empty" : null,
                      ),
                      const SizedBox(height: 25),
                      SizedBox(
                        width: double.infinity,
                        height: 55,
                        child: BlocListener<DriverCubit,DriverState>(
                          listener: (context,state){
                            if(state is DriverUpdated){
                              context.read<DriverCubit>().getAllDrivers();
                              Navigator.of(context).pop();
                            }
                          },
                          child :ElevatedButton(
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                context.read<DriverCubit>().updateDriver(
                                  id: widget.id,
                                  name: nameController.text,
                                  email: emailController.text,
                                  phone: phoneController.text,
                                  licenseNumber: licenseController.text,
                                  nationalNumber: nationalController.text,
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
                          )
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
