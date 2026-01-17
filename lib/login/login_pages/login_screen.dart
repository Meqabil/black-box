import 'package:flutter/material.dart';
import 'package:grad_project/login/password_page/forgot_password_screen.dart';
import 'package:grad_project/login/signup_page/signup.dart';
import 'package:grad_project/login/login_pages/login_success.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isPasswordVisible = false;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  static const Color _mainRedColor = Color(0xFFA30015);
  static const Color _textFieldColor = Color(0xFFFADBD8);
  static const Color _textColor = Color(0xFF4A4A4A);

  // Email validation (Gmail only)
  bool isValidGmail(String email) {
    return RegExp(r'^[a-zA-Z0-9._%+-]+@gmail\.com$').hasMatch(email);
  }

  // Password validation (min 6 chars, at least 1 letter & 1 number)
  bool isValidPassword(String password) {
    return RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$').hasMatch(password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _mainRedColor,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        bottom: false,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: LayoutBuilder(builder: (context, constraints) {
            return SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: IntrinsicHeight(
                  child: Column(
                    children: [
                      const SizedBox(height: 60),
                      const Text(
                        "Welcome",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.0,
                        ),
                      ),
                      const SizedBox(height: 80),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40),
                            ),
                          ),
                          child: _buildLoginForm(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }

  Widget _buildLoginForm() {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          _buildLabel("Username Or Email"),
          const SizedBox(height: 8),
          _buildTextField(
            hint: "example@gmail.com",
            controller: _emailController,
            validator: (value) {
              if (value == null || value.isEmpty) return "Email is required";
              if (!isValidGmail(value)) return "Email must end with @gmail.com";
              return null;
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
          ),
          const SizedBox(height: 30),
          _buildLabel("Password"),
          const SizedBox(height: 8),
          _buildPasswordField(
            validator: (value) {
              if (value == null || value.isEmpty) return "Password is required";
              if (!isValidPassword(value)) return "Password must be at least 6 characters and contain numbers";
              return null;
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
          ),
          const SizedBox(height: 70),
          _buildLoginButton(),
          const SizedBox(height: 15),
          _buildForgotPassword(),
          const SizedBox(height: 50),
          _buildBottomRegisterText(),
        ],
      ),
    );
  }

  Widget _buildLabel(String text) => Text(
        text,
        style: const TextStyle(
          color: _textColor,
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
      );

  Widget _buildTextField({
    required String hint,
    required TextEditingController controller,
    String? Function(String?)? validator,
    AutovalidateMode? autovalidateMode,
  }) =>
      TextFormField(
        controller: controller,
        keyboardType: TextInputType.emailAddress,
        validator: validator,
        autovalidateMode: autovalidateMode,
        decoration: _inputDecoration(hintText: hint, errorMaxLines: 2),
      );

  Widget _buildPasswordField({
    String? Function(String?)? validator,
    AutovalidateMode? autovalidateMode,
  }) =>
      TextFormField(
        controller: _passwordController,
        obscureText: !_isPasswordVisible,
        validator: validator,
        autovalidateMode: autovalidateMode,
        decoration: _inputDecoration(
          hintText: "● ● ● ● ● ● ●",
          suffixIcon: IconButton(
            icon: Icon(
              _isPasswordVisible ? Icons.visibility : Icons.visibility_off_outlined,
              color: Colors.brown[400],
            ),
            onPressed: () => setState(() => _isPasswordVisible = !_isPasswordVisible),
          ),
          errorMaxLines: 2,
        ),
      );

  InputDecoration _inputDecoration({String? hintText, Widget? suffixIcon, int errorMaxLines = 2}) =>
      InputDecoration(
        filled: true,
        fillColor: _textFieldColor,
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey[600], fontSize: 14),
        suffixIcon: suffixIcon,
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
        errorMaxLines: errorMaxLines,
      );

  Widget _buildLoginButton() => Center(
        child: SizedBox(
          width: 250,
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SuccessScreen()),
                );
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: _mainRedColor,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
              elevation: 2,
            ),
            child: const Text(
              "Log In",
              style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      );

  Widget _buildForgotPassword() => Center(
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ForgotPasswordScreen()),
            );
          },
          child: const Text(
            "Forgot Password?",
            style: TextStyle(color: Color(0xFF004D40), fontWeight: FontWeight.bold),
          ),
        ),
      );

  Widget _buildBottomRegisterText() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Don't have an account? ", style: TextStyle(color: Colors.grey[600])),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const Signup()));
            },
            child: const Text(
              "Sign Up",
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      );
}
