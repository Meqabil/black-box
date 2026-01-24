
import 'package:black_box/core/errors/auth_exception.dart';
import 'package:black_box/features/auth/presentation/bloc/auth/new_password/password_cubit.dart';
import 'package:black_box/features/auth/presentation/bloc/auth/new_password/password_state.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/ui/snackbar/exception_snackbar.dart';
import '../../../../../core/ui/snackbar/success_snackbar.dart';
import 'new_password_screen.dart';



class SecurityPinScreen extends StatefulWidget {
  SecurityPinScreen({super.key,required this.email});
  String email;
  @override
  State<SecurityPinScreen> createState() => _SecurityPinScreenState();
}

class _SecurityPinScreenState extends State<SecurityPinScreen> {
  final int pinLength = 6;
  String fullOtp = '';
  final List<TextEditingController> _controllers =
  List.generate(6, (_) => TextEditingController());
  final List<FocusNode> _focusNodes = List.generate(6, (_) => FocusNode());

  Widget _buildPinBox(int index) {
    return SizedBox(
      width: 45,
      height: 55,
      child: TextField(
        controller: _controllers[index],
        focusNode: _focusNodes[index],
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr,
        maxLength: 1,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: mainRedColor,
        ),
        decoration: InputDecoration(
          counterText: '',
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.symmetric(vertical: 10),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: const BorderSide(color: Colors.grey, width: 1.5),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: const BorderSide(color: Colors.grey, width: 1.5),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: const BorderSide(color: mainRedColor, width: 2),
          ),
        ),
        onChanged: (value) {
          if (value.isNotEmpty && index < pinLength - 1) {
            FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
          }
          if (value.isEmpty && index > 0) {
            FocusScope.of(context).requestFocus(_focusNodes[index - 1]);
          }
        },
      ),
    );
  }


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
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: SingleChildScrollView(
                  keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                  padding:
                  const EdgeInsets.symmetric(horizontal: 50, vertical: 40),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children:
                        List.generate(pinLength, (index) => _buildPinBox(index)),
                      ),
                      const SizedBox(height: 80),
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
                          child: ElevatedButton(
                            onPressed: () async{
                              for(int i = 0;i < 6;i++){
                                fullOtp += _controllers[i].text;
                              }
                              if(fullOtp.length < 5){
                                ExceptionSnackBar snack = ExceptionSnackBar();
                                ScaffoldMessenger.of(context).showSnackBar(
                                    snack.show(InCompleteOtpException().message)
                                );
                              }else{
                                context.read<PasswordCubit>().verifyPin(email: widget.email, otp: fullOtp);
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: mainRedColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                            child: const Text(
                              "Verify",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
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