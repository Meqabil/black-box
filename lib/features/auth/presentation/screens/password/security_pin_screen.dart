
import 'package:black_box/core/errors/auth_exception.dart';
import 'package:black_box/features/auth/presentation/bloc/auth/new_password/password_cubit.dart';
import 'package:black_box/features/auth/presentation/bloc/auth/new_password/password_state.dart';
import 'package:black_box/features/auth/presentation/screens/password/widgets/security_pin/otp_cells.dart';
import 'package:black_box/features/auth/presentation/screens/password/widgets/security_pin/verify_otp_button.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/ui/snackbar/exception_snackbar.dart';
import '../../../../../core/ui/snackbar/success_snackbar.dart';
import 'new_password_screen.dart';



class SecurityPinScreen extends StatefulWidget {
  const SecurityPinScreen({super.key,required this.email});
  final String email;
  @override
  State<SecurityPinScreen> createState() => _SecurityPinScreenState();
}

class _SecurityPinScreenState extends State<SecurityPinScreen> {
  final int pinLength = 6;
  String fullOtp = '';
  final List<TextEditingController> _controllers =
  List.generate(6, (_) => TextEditingController());
  final List<FocusNode> _focusNodes = List.generate(6, (_) => FocusNode());


  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var node in _focusNodes) {
      node.dispose();
    }
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: mainRedColor,
      body: SafeArea(
        child: Column(
          children: [

            // Page Title
            const SizedBox(height: 60),
            const Text(
              "Security Pin",
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 80),

            // Page Content
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: backgroundGreen,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: SingleChildScrollView(
                  keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                  padding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Enter Security Pin",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF3A3A3A),
                        ),
                      ),
                      const SizedBox(height: 80),
                      OtpCells(
                        onSubmit: (value){
                          setState(() {
                            fullOtp =  value;
                          });
                        },
                      ),
                      const SizedBox(height: 80),
                      // verify button
                      SizedBox(
                        width: 250,
                        height: 50,
                        child: BlocListener<PasswordCubit,PasswordState>(
                          listener: (context,state){
                            if(state is SuccessPassword){
                              SuccessSnackBar snack = SuccessSnackBar();
                              ScaffoldMessenger.of(context).showSnackBar(
                                  snack.show(state.message)
                              );
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewPasswordPage(email: widget.email, otp: fullOtp)));
                            } else if(state is FailurePassword){
                              ExceptionSnackBar snack = ExceptionSnackBar();
                              ScaffoldMessenger.of(context).showSnackBar(
                                  snack.show(state.message)
                              );
                            }
                          },
                          child: VerifyOtpButton(
                            onPressed: () async{
                              if(fullOtp.length < 6){
                                ExceptionSnackBar snack = ExceptionSnackBar();
                                ScaffoldMessenger.of(context).showSnackBar(
                                    snack.show(InCompleteOtpException().message)
                                );
                              }else{
                                context.read<PasswordCubit>().verifyPin(email: widget.email, otp: fullOtp);
                              }
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Send Again",
                          style: TextStyle(
                            color: Color(0xFFC26C78),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}