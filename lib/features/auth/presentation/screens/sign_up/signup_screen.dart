import 'dart:io';
import 'package:black_box/core/constants/global.dart';
import 'package:black_box/core/ui/widgets/main_image.dart';
import 'package:black_box/features/auth/presentation/screens/sign_up/widgets/sign_up_form.dart';
import '../../../../../core/constants/colors.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  File? image;

  formatDate(String date){
    String temp = date.substring(0,2);
    String da = date.replaceRange(0, 2, date.substring(3,5)).replaceRange(3, 5, temp);
    return da;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainRedColor,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        bottom: false,
        child:
        CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: GestureDetector(
                onTap: () => FocusScope.of(context).unfocus(),
                child: Column(
                  children: [
                    const SizedBox(height: 60),
                    const Text(
                      "Create Account",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    //const SizedBox(height: 30),
                    Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 80),
                          padding: const EdgeInsets.only(left: 20,right: 20,top: 68,),
                          width: double.infinity,
                          height: MediaQuery.sizeOf(context).height,
                          decoration: const BoxDecoration(
                            color: backgroundGreen,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(60),
                              topRight: Radius.circular(60),
                            ),
                          ),
                          child: SignUpForm(image: image,),
                        ),
                        Positioned(
                          left: MediaQuery.sizeOf(context).width / 2 - 50,
                          top: 15,
                          child: InkWell(
                            onTap: () async{
                              File? tempFile = await pickImages(context);
                              image = tempFile ?? image;
                              setState(() {});
                            },
                            child: image == null ? Container(
                              width: 120,
                              height: 120,
                              decoration: BoxDecoration(
                                color: Color(0xFFB0B0B0),
                                borderRadius: BorderRadius.circular(90)
                              ),
                              child: Icon(Icons.person_outline_rounded,size: 60,color: mainRedColor,)
                            ) :
                            MainImage(
                              image: image,
                              radius: 120
                            ),
                          ),
                        ),
                        Positioned(
                          left: MediaQuery.sizeOf(context).width / 2 + 30,
                          top: 90,
                          child: InkWell(
                            onTap: ()async {
                              File? tempFile = await pickPhotoByCamera();
                              image = tempFile ?? image;
                              setState(() {});
                            },
                            child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: mainRedColor,
                                    borderRadius: BorderRadius.circular(90)
                                ),
                                child: Icon(Icons.camera_alt_outlined,size: 20,color: Colors.white.withAlpha(200),)
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}