
import 'package:black_box/core/constants/colors.dart';
import 'package:black_box/core/ui/snackbar/exception_snackbar.dart';
import 'package:black_box/core/ui/snackbar/success_snackbar.dart';
import 'package:black_box/features/auth/presentation/bloc/auth/new_password/password_cubit.dart';
import 'package:black_box/features/auth/presentation/bloc/auth/new_password/password_state.dart';
import 'package:black_box/features/auth/presentation/screens/login/login_success.dart';
import 'package:black_box/features/auth/presentation/screens/password/password_widgets.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewPasswordPage extends StatefulWidget {
  NewPasswordPage({super.key,required this.email,required this.otp});
  String email;
  String otp;
  @override
  State<NewPasswordPage> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordPage> {
  final _formKey = GlobalKey<FormState>();
  final _newPasswordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  bool obscureNew = true;
  bool obscureConfirm = true;


  @override
  void dispose() {
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainRedColor,
      appBar: AppBar(
        backgroundColor: mainRedColor,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "New Password",
          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 125),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: const BoxDecoration(
          color: Color(0xFFF2FFF4),
          borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
        ),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: IntrinsicHeight(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        passwordField(
                          label: "New Password",
                          controller: _newPasswordController,
                          obscure: obscureNew,
                          onToggle: () {
                            setState(() => obscureNew = !obscureNew);
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Password is required";
                            }
                            if (value.length < 6) {
                              return "Password must be at least 6 characters";
                            }
                            if (!RegExp(r'[A-Z]').hasMatch(value)) {
                              return "Password must contain at least one uppercase letter";
                            }
                            if (!RegExp(r'[a-z]').hasMatch(value)) {
                              return "Password must contain at least one lowercase letter";
                            }
                            if (!RegExp(r'\d').hasMatch(value)) {
                              return "Password must contain at least one number";
                            }
                            if (!RegExp(
                              r'[!@#$%^&*(),.?":{}|<>]',
                            ).hasMatch(value)) {
                              return "Password must contain at least one special character";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 20),
                        passwordField(
                          label: "Confirm New Password",
                          controller: _confirmPasswordController,
                          obscure: obscureConfirm,
                          onToggle: () {
                            setState(() => obscureConfirm = !obscureConfirm);
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please confirm your password";
                            }
                            if (value != _newPasswordController.text) {
                              return "Passwords do not match";
                            }
                            return null;
                          },
                        ),

                        const SizedBox(height: 150),

                        SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: BlocListener<PasswordCubit,PasswordState>(
                            listener: (context,state){
                              if(state is SuccessPassword){
                                SuccessSnackBar snack = SuccessSnackBar();
                                ScaffoldMessenger.of(context).showSnackBar(
                                    snack.show(state.message)
                                );
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => SuccessScreen()));
                              } else if(state is FailurePassword){
                                ExceptionSnackBar snack = ExceptionSnackBar();
                                ScaffoldMessenger.of(context).showSnackBar(
                                    snack.show(state.message)
                                );
                              }
                            },
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFB00000),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              onPressed: (){
                                if(_formKey.currentState!.validate()){
                                  context.read<PasswordCubit>().resetPassword(email: widget.email, otp: widget.otp, password: _newPasswordController.text.trim());
                                }
                              },
                              child: const Text(
                                "Change Password",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

