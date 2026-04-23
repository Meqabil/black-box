import 'dart:io';
import 'package:black_box/features/auth/presentation/screens/sign_up/widgets/terms_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../core/constants/colors.dart';
import '../../../../../../core/constants/global.dart';
import '../../../../../../core/ui/snackbar/exception_snackbar.dart';
import '../../../../../home/screens/bnv.dart';
import '../../../bloc/auth/signup/signup_cubit.dart';
import '../../../bloc/auth/signup/signup_state.dart';
import '../../functions/is_valid_gmail.dart';
import '../../functions/terms_dialog.dart';
import '../../sign_up/widgets/password_field.dart';
import '../../sign_up/widgets/form_text_field.dart';
import '../functions/is_vaild_password.dart';
import 'bottom_login_text.dart';

class SignUpForm extends StatefulWidget {
  SignUpForm({super.key,required this.image});
  File? image;
  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;
  bool agreed = false;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FormTextField(
            label: "Full Name",
            labelColor: labelColor,
            fillColor: lightPink,
            controller: _nameController,
            hint: "John Doe",
            validator: (value) {
              if (value == null || value.isEmpty) return "Full Name is required";
              return null;
            },
            autoValidateMode: AutovalidateMode.onUserInteraction,
            readOnly: false,
          ),
          FormTextField(
            label: "Email",
            labelColor: labelColor,
            fillColor: lightPink,
            controller: _emailController,
            hint: "example@gmail.com",
            validator: (value) {
              if (value == null || value.isEmpty) return "Email is required";
              if (!isValidGmail(value)) return "Email must end with @gmail.com";
              return null;
            },
            autoValidateMode: AutovalidateMode.onUserInteraction,
            readOnly: false,
          ),

          PasswordField(
            label: "Password",
            labelColor: labelColor,
            fillColor: lightPink,
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
          PasswordField(
            label: "Confirm Password",
            labelColor: labelColor,
            fillColor: lightPink,
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
          Spacer(),
          TermsText(

            onTap: (){
              showDialog(
                context: context, 
                builder: (context){
                  return termsDialog(
                    context: context,
                    checked: agreed,
                    onChanged: (val){
                      setState(() {
                        agreed = !agreed;
                      });
                      Navigator.of(context).pop();
                    },
                    onTap: (){
                      setState(() {
                        agreed = !agreed;
                      });
                      Navigator.of(context).pop();
                    },
                  );
                }
              );
            },
          ),
          const SizedBox(height: 15),
          Center(
            child: SizedBox(
              width: 250,
              height: 50,
              child: BlocListener<SignUpCubit,SignUpState>(
                listener: (context,state){
                  if(state is SuccessSignUp){
                    saveUserData(state.owner);
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => BNVScreen()));
                  } else if(state is FailureSignUp){
                    ExceptionSnackBar snack = ExceptionSnackBar();
                    ScaffoldMessenger.of(context).showSnackBar(
                        snack.show(state.message)
                    );
                  } else if (state is LoadingSignUp){

                  }
                },

                child: ElevatedButton(
                  onPressed: agreed ? () {
                    if(_formKey.currentState!.validate()){
                      context.read<SignUpCubit>().signUp(
                          name: _nameController.text.trim(),
                          email: _emailController.text.trim(),
                          password: _passwordController.text.trim(),
                          profileImage: widget.image
                      );
                    }
                  } : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor:agreed ? mainRedColor : Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    elevation: 5,
                  ),
                  child: Text(
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
          BottomLoginText(),
          const SizedBox(height: 20),

        ],
      ),
    );
  }
}
