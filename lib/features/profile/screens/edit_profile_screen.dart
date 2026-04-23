import 'dart:io';

import 'package:black_box/core/constants/colors.dart';
import 'package:black_box/features/auth/presentation/bloc/owner/owner_cubit.dart';
import 'package:black_box/features/auth/presentation/bloc/owner/owner_state.dart';
import 'package:black_box/features/profile/widgets/edit_driver_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/constants/global.dart';
import '../../../core/constants/images.dart';
import '../../../core/constants/links.dart';
import '../widgets/white_layer.dart';


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
      backgroundColor: primaryRed,
      appBar: AppBar(
        backgroundColor: primaryRed,
        centerTitle: true,
        toolbarHeight: 90,
        title: Text("Edit My Profile",style:  const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
        actions: [
          InkWell(
            onTap: () async{

            },
            child: const CircleAvatar(backgroundColor: Colors.white24, child: Icon(Icons.notifications_none, color: Colors.white))
          ),
          SizedBox(width: 20,),
        ],
      ),
      extendBody: true,
      body: Stack(
        children: [
          WhiteLayer(color: Colors.white,top: 140),
          Column(
            children: [
              const SizedBox(height: 70),
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
                      backgroundColor: Colors.white,
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
                        padding: const EdgeInsets.all(6),
                        decoration: const BoxDecoration(color: primaryRed, shape: BoxShape.circle),
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
                            Text(widget.name, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: textColor)),
                            const Text("ID: 25030024", style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      Text("Account Settings", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: textColor)),
                      const SizedBox(height: 15),
                      EditDriverInput(controller: _nameController, label: "User Name",),
                      EditDriverInput(controller: _emailController, label: "Email",readOnly: true,),

                      SwitchListTile(
                        title: Text("Push Notifications",
                        style: TextStyle(fontSize: 16, color: Colors.black)),
                        activeColor: mainRedColor,
                        value: true,
                        onChanged: (bool value) {

                        },
                      ),
                      SwitchListTile(
                        title: Text("Turn Dark Theme ",
                        style: TextStyle(fontSize: 16, color: Colors.black)),
                        activeColor: mainRedColor,
                        value: true,
                        onChanged: (bool value) {

                        },
                      ),
                      const SizedBox(height: 30),

                      Center(
                        child: SizedBox(
                          width: 250, height: 50,
                          child: BlocBuilder<OwnerCubit,OwnerState>(
                            builder: (context,state) {
                              if(state is OwnerSuccess){
                                return ElevatedButton(
                                  style: ElevatedButton.styleFrom(backgroundColor: primaryRed, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
                                  onPressed: (){
                                    context.read<OwnerCubit>().updateOwner(
                                      id: state.owner.id,
                                      name: _nameController.text.trim(),
                                      image: image
                                    );
                                    Navigator.pop(context);
                                  },
                                  child: const Text("Update Profile",style: TextStyle(color: Colors.white, fontSize: 18)),
                                );
                              }
                              return ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(backgroundColor: primaryRed, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
                                child: const Text("Update Profile", style: TextStyle(color: Colors.white, fontSize: 18)),
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