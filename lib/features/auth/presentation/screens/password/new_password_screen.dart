
import 'package:black_box/core/constants/colors.dart';
import 'package:black_box/features/auth/presentation/bloc/auth/new_password/password_cubit.dart';
import 'package:black_box/features/auth/presentation/screens/password/widgets/new_password/change_password_button.dart';
import 'package:black_box/features/auth/presentation/screens/password/widgets/new_password/new_password_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewPasswordPage extends StatefulWidget {
  const NewPasswordPage({super.key,required this.email,required this.otp});
  final String email;
  final String otp;
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

            // Page Body
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: backgroundGreen,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                    topRight: Radius.circular(70),
                  ),
                ),
                child: SingleChildScrollView(
                  keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                  padding:
                  const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 50,),
                        NewPasswordField(
                          label: " New Password",
                          controller: _newPasswordController,
                          obscure: obscureNew,
                          onToggle: () {
                            setState(() => obscureNew = !obscureNew);
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Password is required";
                            }
                            if (value.length < 8) {
                              return "Password must be at least 8 characters";
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
                        NewPasswordField(
                          label: " Confirm New Password",
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
                        const SizedBox(height: 100),
                        ChangePasswordButton(
                          onPressed: (){
                            if(_formKey.currentState!.validate()){
                              context.read<PasswordCubit>().resetPassword(email: widget.email, otp: widget.otp, password: _newPasswordController.text.trim());
                            }
                          }
                        ),
                      ],
                    ),
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
