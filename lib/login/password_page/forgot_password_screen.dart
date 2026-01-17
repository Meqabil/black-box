import 'package:flutter/material.dart';
import 'package:grad_project/login/password_page/security_pin_screen.dart';

const Color _mainRedColor = Color(0xFFA30015);
const Color _inputBgColor = Color(0xFFFADBD8);
const Color _labelColor = Color(0xFF1A1A1A);

InputDecoration _inputDecoration({required String hint, Widget? suffixIcon}) {
  return InputDecoration(
    filled: true,
    fillColor: _inputBgColor,
    hintText: hint,
    hintStyle: TextStyle(color: Colors.grey[600], fontSize: 14),
    suffixIcon: suffixIcon,
    contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide.none,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide.none,
    ),
  );
}

Widget _buildLabel(String text) {
  return Align(
    alignment: Alignment.centerLeft,
    child: Text(
      text,
      style: TextStyle(
        color: _labelColor,
        fontWeight: FontWeight.bold,
        fontSize: 14,
      ),
    ),
  );
}

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final TextEditingController _emailController = TextEditingController();
  String? _emailError;
  bool _isEmailValid = false;

  bool _isValidGmail(String email) {
    return email.trim().endsWith("@gmail.com");
  }

  void _validateAndNext(BuildContext context) {
    if (!_isValidGmail(_emailController.text)) {
      setState(() {
        _emailError = "Email must end with @gmail.com";
        _isEmailValid = false;
      });
    } else {
      setState(() {
        _emailError = null;
        _isEmailValid = true;
      });

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const SecurityPinScreen(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _mainRedColor,
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
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
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
                      _buildLabel("Enter Email Address"),
                      const SizedBox(height: 8),
                      TextField(
                        controller: _emailController,
                        onChanged: (value) {
                          if (_isValidGmail(value)) {
                            setState(() {
                              _emailError = null;
                              _isEmailValid = true;
                            });
                          } else {
                            setState(() {
                              _emailError = "Email must end with @gmail.com";
                              _isEmailValid = false;
                            });
                          }
                        },
                        decoration: _inputDecoration(
                          hint: "example@gmail.com",
                        ).copyWith(
                          errorText: _emailError,
                        ),
                      ),
                      const SizedBox(height: 40),
                      Center(
                        child: SizedBox(
                          width: 250,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: _isEmailValid
                                ? () => _validateAndNext(context)
                                : null, 
                            style: ElevatedButton.styleFrom(
                              backgroundColor: _isEmailValid
                                  ? _mainRedColor
                                  : Colors.grey, 
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                            child: const Text(
                              "Next Step",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
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
          ],
        ),
      ),
    );
  }
}
