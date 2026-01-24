
import 'package:black_box/core/ui/snackbar/exception_snackbar.dart';
import 'package:black_box/features/auth/presentation/bloc/auth/signup/signup_cubit.dart';
import 'package:black_box/features/auth/presentation/bloc/auth/signup/signup_state.dart';
import 'package:black_box/features/auth/presentation/screens/login/login_success.dart';

import 'package:black_box/features/auth/presentation/screens/sign_up/widgets/sign_up_screen_widgets.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constants/colors.dart';



class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;

  final _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _nationalIDController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();


  // Email validation (Gmail only)
  bool isValidGmail(String email) {
    return RegExp(r'^[a-zA-Z0-9._%+-]+@gmail\.com$').hasMatch(email);
  }

  // Mobile validation (11 digits)
  bool isValidMobile(String mobile) {
    return RegExp(r'^\d{11}$').hasMatch(mobile);
  }

  // Mobile validation (11 digits)
  bool isValidID(String mobile) {
    return RegExp(r'^\d{14}$').hasMatch(mobile);
  }



  // Password validation (min 6 chars, at least 1 letter & 1 number)
  bool isValidPassword(String password) {
    return RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$').hasMatch(password);
  }

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
                    const SizedBox(height: 80),
                    Container(
                      padding: const EdgeInsets.only(left: 10,right: 10,top: 28,),
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            buildInputField(
                              label: "Full Name",
                              labelColor: labelColor,
                              fillColor: textFieldColor,
                              controller: _nameController,
                              hint: "John Doe",
                              validator: (value) {
                                if (value == null || value.isEmpty) return "Full Name is required";
                                return null;
                              },
                              autoValidateMode: AutovalidateMode.onUserInteraction,
                            ),
                            buildInputField(
                              label: "Email",
                              labelColor: labelColor,
                              fillColor: textFieldColor,
                              controller: _emailController,
                              hint: "example@gmail.com",
                              validator: (value) {
                                if (value == null || value.isEmpty) return "Email is required";
                                if (!isValidGmail(value)) return "Email must end with @gmail.com";
                                return null;
                              },
                              autoValidateMode: AutovalidateMode.onUserInteraction,
                            ),
                            buildInputField(
                              label: "Mobile Number",
                              labelColor: labelColor,
                              fillColor: textFieldColor,
                              controller: _mobileController,
                              hint: "+20113 456 789",
                              keyboardType: TextInputType.number,
                              validator: (value) {
                                if (value == null || value.isEmpty) return "Mobile Number is required";
                                if (!isValidMobile(value)) return "Mobile Number must be 11 digits";
                                return null;
                              },
                              autoValidateMode: AutovalidateMode.onUserInteraction,
                            ),
                            buildInputField(
                              label: "National ID",
                              labelColor: labelColor,
                              fillColor: textFieldColor,
                              controller: _nationalIDController,
                              hint: "20548569874593",
                              keyboardType: TextInputType.number,
                              validator: (value) {
                                if (value == null || value.isEmpty) return "ID Number is required";
                                if (!isValidID(value)) return "ID Number must be 14 digits";
                                return null;
                              },
                              autoValidateMode: AutovalidateMode.onUserInteraction,
                            ),

                            buildInputField(
                              label: "Date Of Birth",
                              labelColor: labelColor,
                              fillColor: textFieldColor,
                              controller: _dobController,
                              hint: "DD / MM / YYYY",
                              readOnly: true,
                              onTap: () async {
                                DateTime? pickedDate = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime(2000, 1, 1),
                                  firstDate: DateTime(1900),
                                  lastDate: DateTime.now(),
                                );
                                if (pickedDate != null) {
                                  String formattedDate =
                                      "${pickedDate.day.toString().padLeft(2, '0')} / "
                                      "${pickedDate.month.toString().padLeft(2, '0')} / "
                                      "${pickedDate.year}";
                                  setState(() {
                                    _dobController.text = formattedDate;
                                  });
                                }
                              },
                              validator: (value) {
                                if (value == null || value.isEmpty) return "Date Of Birth is required";
                                return null;
                              },
                              autoValidateMode: AutovalidateMode.onUserInteraction,
                            ),
                            buildPasswordField(
                              label: "Password",
                              labelColor: labelColor,
                              fillColor: textFieldColor,
                              controller: _passwordController,
                              isVisible: _isPasswordVisible,
                              onToggle: () => setState(() => _isPasswordVisible = !_isPasswordVisible),
                              validator: (value) {
                                if (value == null || value.isEmpty) return "Password is required";
                                if (!isValidPassword(value)) {
                                  return "Password must be at least 6 characters and contain numbers";
                                }
                                return null;
                              },
                            ),
                            buildPasswordField(
                              label: "Confirm Password",
                              labelColor: labelColor,
                              fillColor: textFieldColor,
                              controller: _confirmPasswordController,
                              isVisible: _isConfirmPasswordVisible,
                              onToggle: () => setState(() => _isConfirmPasswordVisible = !_isConfirmPasswordVisible),
                              validator: (value) {
                                if (value == null || value.isEmpty) return "Confirm Password is required";
                                if (value != _passwordController.text) return "Passwords do not match";
                                return null;
                              },
                            ),

                            const SizedBox(height: 20),

                            Center(
                              child: SizedBox(
                                width: 250,
                                height: 50,
                                child: BlocListener<SignUpCubit,SignUpState>(
                                  listener: (context,state){
                                    if(state is SuccessSignUp){
                                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => SuccessScreen()));
                                    } else if(state is FailureSignUp){
                                      ExceptionSnackBar snack = ExceptionSnackBar();
                                      ScaffoldMessenger.of(context).showSnackBar(
                                          snack.show(state.message)
                                      );
                                    }
                                  },
                                  child: ElevatedButton(
                                    onPressed: () {
                                      if(_formKey.currentState!.validate()){
                                        context.read<SignUpCubit>().signUp(
                                          name: _nameController.text.trim(),
                                          email: _emailController.text.trim(),
                                          password: _passwordController.text.trim(),
                                          phoneNumber: _mobileController.text.trim(),
                                          birthDate: formatDate(_dobController.text.replaceAll(" ", '')),
                                          nationalNumber: _nationalIDController.text.trim(),
                                        );
                                      }
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: mainRedColor,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      elevation: 5,
                                    ),
                                    child: const Text(
                                      "Sign Up",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 15),
                            buildBottomLoginText(context: context),
                            const SizedBox(height: 20),
                            buildTermsText(),
                            const SizedBox(height: 10),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        )
        ,
      ),
    );
  }
}