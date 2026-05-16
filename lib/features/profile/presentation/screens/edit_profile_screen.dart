import 'dart:io';
import 'package:black_box/features/auth/presentation/cubit/owner/owner_cubit.dart';
import 'package:black_box/features/auth/presentation/cubit/owner/owner_state.dart';
import 'package:black_box/features/profile/widgets/edit_driver_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/constants/images.dart';
import '../../../core/constants/links.dart';
import '../../../core/theme/app_color.dart';
import '../../../core/utils/image_picker_helper.dart';
import '../../../shared/widgets/notification_button.dart';
import '../widgets/white_layer.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EditProfileScreen extends StatefulWidget {
  final String id;
  final String name;
  final String email;
  final String? image;
  const EditProfileScreen({super.key, required this.name, required this.email,required this.id,required this.image});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  File? image;
  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.name);
    _emailController = TextEditingController(text: widget.email);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 90,
        title: Text(AppLocalizations.of(context)!.profile_edit,style:  const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
        actions: [
          NotificationButton(),
          SizedBox(width: 20,),
        ],
      ),
      extendBody: true,
      body: Stack(
        children: [
          WhiteLayer(color: Theme.of(context).colorScheme.secondary,top: 90),
          Column(
            children: [
              const SizedBox(height: 20),
              Stack(
                children: [
                  InkWell(
                    onTap: () async{
                      File? tempFile = await pickImages(context);
                      image = tempFile ?? image;
                      setState(() {});
                    },
                    child: CircleAvatar(
                      radius: 60,
                      backgroundColor: Theme.of(context).colorScheme.secondary,
                      child: CircleAvatar(
                        radius: 56,
                        backgroundImage: image != null ?
                          FileImage(image!)
                        : widget.image == null || widget.image == '' ? AssetImage(AppImages.defaultOwnerImage) : NetworkImage("${AppLink.rootStorage}/${widget.image}")
                      )
                    )
                  ),
                  Positioned(
                    bottom: 0, right: 0,
                    child: InkWell(
                      onTap: () async{
                        File? tempFile = await pickPhotoByCamera();
                        image = tempFile ?? image;
                        setState(() {});
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary, shape: BoxShape.circle),
                        child: const Icon(Icons.camera_alt, color: Colors.white, size: 18),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Form(
                  key: _formKey,
                  child: ListView(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 100),
                    children: [
                      Center(
                        child: Column(
                          children: [
                            Text(widget.name, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: AppColor.textBlackColor)),
                            Text("ID: ${widget.id}", style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      Text("Account Settings", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: AppColor.textBlackColor)),
                      const SizedBox(height: 15),
                      EditOwnerInput(controller: _nameController, label: "User Name",),
                      EditOwnerInput(controller: _emailController, label: "Email",readOnly: true,),


                      const SizedBox(height: 30),

                      Center(
                        child: SizedBox(
                          width: 250, height: 50,
                          child: BlocBuilder<OwnerCubit,OwnerState>(
                            builder: (context,state) {
                              if(state is OwnerSuccess){
                                return ElevatedButton(
                                  style: ElevatedButton.styleFrom(backgroundColor: Theme.of(context).colorScheme.primary, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
                                  onPressed: (){
                                    context.read<OwnerCubit>().updateOwner(
                                      id: state.owner.id,
                                      name: _nameController.text.trim(),
                                      image: image
                                    );
                                    Navigator.pop(context);
                                  },
                                  child: Text(AppLocalizations.of(context)!.update_profile,style: TextStyle(color: Colors.white, fontSize: 18)),
                                );
                              }
                              return ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(backgroundColor: Theme.of(context).colorScheme.primary, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
                                child: Text(AppLocalizations.of(context)!.update_profile, style: TextStyle(color: Colors.white, fontSize: 18)),
                              );
                            }
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}