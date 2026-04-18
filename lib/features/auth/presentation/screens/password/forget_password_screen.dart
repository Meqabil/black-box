import 'package:black_box/core/constants/colors.dart';
import 'package:black_box/features/auth/presentation/screens/password/widgets/forget_password/check_email.dart';
import 'package:black_box/features/auth/presentation/screens/password/widgets/forget_password/send_verification_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/auth/new_password/password_cubit.dart';
import '../../widgets/input_label.dart';
import '../functions/is_valid_gmail.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final TextEditingController _emailController = TextEditingController();
  String? _emailError;
  ValueNotifier<bool>  _isEmailValid = ValueNotifier(false);

  void validateAndNext() {
    if (!isValidGmail(_emailController.text)) {
      setState(() {
        _emailError = "Email must end with @gmail.com";
        _isEmailValid.value = false;
      });
    } else {
      setState(() {
        _emailError = null;
        _isEmailValid.value = true;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainRedColor,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 60),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: Text(
                  "Forgot Password",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 80),
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
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 60,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Reset Password?",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "Enter the email associated with your account and we'll send you password reset Security Pin.",
                        style: TextStyle(color: Colors.grey[600], fontSize: 14),
                      ),
                      const SizedBox(height: 80),
                      InputLabel(text:"Enter Email Address", textColor: Colors.black,),
                      const SizedBox(height: 8),
                      CheckEmail(
                        emailController: _emailController,
                        emailError: _emailError,
                        onChanged: (value) {
                          if (isValidGmail(value)) {
                            setState(() {
                              _emailError = null;
                              _isEmailValid.value = true;
                            });
                          } else {
                            setState(() {
                              _emailError = "Email must end with @gmail.com";
                              _isEmailValid.value = false;
                            });
                          }
                        },
                      ),
                      const SizedBox(height: 40),
                      ValueListenableBuilder(
                          valueListenable: _isEmailValid,
                          builder: (context, value, child) {
                            return SendVerificationButton(
                              email: _emailController.text,
                              backgroundColor: _isEmailValid.value
                                  ? mainRedColor
                                  : Colors.grey,
                              onPressed: _isEmailValid.value
                                  ? () {
                                validateAndNext();
                                context.read<PasswordCubit>().sendResetPassword(email: _emailController.text.trim());
                              } : null,
                            );
                          },
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