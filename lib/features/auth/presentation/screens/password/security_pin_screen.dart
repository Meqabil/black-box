
import 'dart:async';

import 'package:black_box/core/errors/auth_exception.dart';
import 'package:black_box/features/auth/presentation/cubit/auth/new_password/password_cubit.dart';
import 'package:black_box/features/auth/presentation/cubit/auth/new_password/password_state.dart';
import 'package:black_box/features/auth/presentation/screens/password/widgets/security_pin/otp_cells.dart';
import 'package:black_box/features/auth/presentation/screens/password/widgets/security_pin/verify_otp_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/constants/global.dart';
import '../../../../../core/ui/snackbar/exception_snackbar.dart';
import '../../../../../core/ui/snackbar/success_snackbar.dart';
import 'new_password_screen.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class SecurityPinScreen extends StatefulWidget {
  const SecurityPinScreen({super.key,required this.email});
  final String email;
  @override
  State<SecurityPinScreen> createState() => _SecurityPinScreenState();
}

class _SecurityPinScreenState extends State<SecurityPinScreen> {
  final int pinLength = 6;
  String fullOtp = '';
  ValueNotifier<int> count = ValueNotifier(59);



  @override
  void initState() {
    resendCodeTimer();
    super.initState();
  }
  void resendCodeTimer(){
    Timer.periodic(Duration(seconds: 1), (timer){
      count.value -= 1;
      if(count.value == 0){
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SafeArea(
        child: Column(
          children: [
            // Page Title
            Container(
              height: height * 0.21,
              alignment: Alignment.center,
              child: Text(
                AppLocalizations.of(context)!.auth_security_pin,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: width * 0.055,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0,
                ),
              ),
            ),
            // Page Content
            Expanded(
              child: Container(
                width: width,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                    topRight: Radius.circular(70),
                  ),
                ),
                child: SingleChildScrollView(
                  keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                  padding:
                  EdgeInsets.symmetric(horizontal: width * .02, vertical: width * .18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        AppLocalizations.of(context)!.auth_enter_pin,
                        style: TextStyle(
                          fontSize: width * 0.042,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                      ),
                      SizedBox(height: width * .17),
                      OtpCells(
                        onSubmit: (value){
                          setState(() {
                            fullOtp =  value;
                          });
                        },
                      ),
                      SizedBox(height: width * .18),
                      // verify button
                      SizedBox(
                        width: width * .57,
                        height: width * .112,
                        child: BlocListener<PasswordCubit,PasswordState>(
                          listener: (context,state){
                            if(state is SuccessPassword){
                              SuccessSnackBar snack = SuccessSnackBar();
                              ScaffoldMessenger.of(context).showSnackBar(
                                  snack.show(state.message)
                              );
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewPasswordScreen(email: widget.email, otp: fullOtp)));
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
                      SizedBox(height: width * .038),
                      SizedBox(
                        width: width * .57,
                        height: width * .112,
                        child: BlocListener<PasswordCubit,PasswordState>(
                          listener: (context,state){
                            if(state is SuccessPassword){
                              SuccessSnackBar snack = SuccessSnackBar();
                              ScaffoldMessenger.of(context).showSnackBar(
                                  snack.show(state.message)
                              );
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewPasswordScreen(email: widget.email, otp: fullOtp)));
                            } else if(state is FailurePassword){
                              ExceptionSnackBar snack = ExceptionSnackBar();
                              ScaffoldMessenger.of(context).showSnackBar(
                                  snack.show(state.message)
                              );
                            }
                          },
                          child: ValueListenableBuilder(
                            valueListenable: count,
                            builder: (context,val,_) {
                              return ElevatedButton(
                                onPressed: val == 0 ? (){
                                  context.read<PasswordCubit>().sendResetPassword(email: widget.email);
                                } : null,
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                ),
                                child: Text(
                                  AppLocalizations.of(context)!.auth_resend_pin(val),
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: width * 0.042,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              );
                            }
                          )
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