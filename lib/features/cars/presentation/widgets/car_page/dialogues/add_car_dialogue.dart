
import 'package:black_box/core/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../../../../shared/widgets/dialoge_input.dart';
import '../../../cubit/car/car_cubit.dart';
import '../../../cubit/car/car_state.dart';

class AddCarDialogue extends StatefulWidget {
  const AddCarDialogue({super.key});

  @override
  State<AddCarDialogue> createState() => _AddCarDialogueState();
}

class _AddCarDialogueState extends State<AddCarDialogue> {
  final TextEditingController driverNameController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController plateNumberController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  String vehicleClass = 'suv';

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
                  color: Theme.of(context).dialogTheme.backgroundColor
                ),
                child: SingleChildScrollView(
                  child: Form(
                    key: formKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          AppLocalizations.of(context)!.car_add,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 20),
                        DialogueInput(
                          hint: "# ${AppLocalizations.of(context)!.car_driver_name}",
                          controller: driverNameController,

                        ),
                        DialogueInput(
                          hint: '# ${AppLocalizations.of(context)!.car_name}',
                          controller: nameController,
                          validator: (val){
                            if (val == null || val.isEmpty) return "This Field can't be empty !";
                            return null;
                          },
                        ),
                        Container(
                          alignment: Alignment.bottomCenter,
                          width: double.infinity,
                          constraints: BoxConstraints(minHeight: 50,maxHeight: 50),
                          child: DropdownButtonFormField(
                            items: [
                              DropdownMenuItem(value: 'sedan',child: Text(AppLocalizations.of(context)!.sedan)),
                              DropdownMenuItem(value: 'heavy_duty',child: Text(AppLocalizations.of(context)!.heavy_duty)),
                            ],
                            onChanged: (val){
                              setState(() {
                                vehicleClass = val ?? vehicleClass;
                              });
                            },
                            hint: Text(AppLocalizations.of(context)!.car_type),
                            decoration: InputDecoration(
                              constraints: BoxConstraints(maxHeight: 50,minHeight: 50),
                              hintStyle: TextStyle(fontSize: 13),
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(90),
                                borderSide: BorderSide.none,
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 20,
                              ),
                            ),
                          ),
                        ),
                        DialogueInput(
                          hint: '# ${AppLocalizations.of(context)!.car_plate}',
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
                            onPressed: () async{
                              if(formKey.currentState!.validate()){
                                context.read<CarCubit>().addCarWithDriver(
                                    driverName: driverNameController.text.trim(),
                                    carName: nameController.text.trim(),
                                    vClass: vehicleClass,
                                    plateNumber: plateNumberController.text.trim(),

                                );
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColor.mainRedColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(90),
                              ),
                              minimumSize: const Size(double.infinity, 50),
                            ),
                            child: Text(
                              AppLocalizations.of(context)!.common_save,
                              style: TextStyle(color: Colors.white),
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
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(90),
                              ),
                            ),
                            child: Text(
                              AppLocalizations.of(context)!.common_cancel,
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
                ),
              );
            }
        ),
      ),
    );
  }
}
