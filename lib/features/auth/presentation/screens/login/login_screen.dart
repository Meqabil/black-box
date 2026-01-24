
import 'package:black_box/core/constants/colors.dart';
import 'package:black_box/core/network/network_info.dart';
import 'package:black_box/core/network/network_info_imp.dart';
import 'package:black_box/core/ui/snackbar/exception_snackbar.dart';
import 'package:black_box/features/auth/presentation/screens/login/widgets/login_screen_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/auth/login/login_cubit.dart';
import '../../bloc/auth/login/login_state.dart';
import 'login_success.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  NetworkInfo network = NetworkInfoImpl();
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
            return CustomScrollView(
              physics: const PageScrollPhysics(),
              slivers: [
                SliverToBoxAdapter(
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
                )
              ],
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
          buildLabel(text:"Username Or Email",textColor: _textColor),
          const SizedBox(height: 8),
          buildTextField(
            hint: "example@gmail.com",
            controller: _emailController,
            textFieldColor: _textFieldColor,
            validator: (value) {
              if (value == null || value.isEmpty) return "Email is required";
              if (!isValidGmail(value)) return "Email must end with @gmail.com";
              return null;
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
          ),
          const SizedBox(height: 30),
          buildLabel(text:"Password",textColor: _textColor),
          const SizedBox(height: 8),
          buildPasswordField(
            controller: _passwordController,
            isPasswordVisible: _isPasswordVisible,
            textFieldColor: _textFieldColor,
            onPressed: () => setState(() => _isPasswordVisible = !_isPasswordVisible),
            validator: (value) {
              if (value == null || value.isEmpty) return "Password is required";
              return null;
            },
            autoValidateMode: AutovalidateMode.onUserInteraction,
          ),
          const SizedBox(height: 70),

          const SizedBox(height: 15),
          BlocConsumer<LoginCubit,LoginState>(
            listener: (context,state){
              if(state is LoginFailure){
                ExceptionSnackBar snack = ExceptionSnackBar();
                ScaffoldMessenger.of(context).showSnackBar(
                  snack.show(state.message)
                );
              }
              if(state is LoginSuccess){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => SuccessScreen()));
              }
            },
            builder: (context, st) {
              return buildLoginButton(
                  context: context,
                  backgroundColor: _mainRedColor,
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      context.read<LoginCubit>().login(_emailController.text.trim(),_passwordController.text.trim());
                    }
                  }
              );
            },
          ),
          buildForgotPassword(context: context),
          const SizedBox(height: 50),
          buildBottomRegisterText(
              context: context,
          ),
        ],
      ),
    );
  }
}