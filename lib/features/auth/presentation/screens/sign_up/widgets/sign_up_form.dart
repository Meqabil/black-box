import 'dart:io';
import 'package:black_box/features/auth/presentation/screens/sign_up/widgets/terms_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../core/constants/colors.dart';
import '../../../../../../core/constants/global.dart';
import '../../../../../../core/ui/snackbar/exception_snackbar.dart';
import '../../../../../../bnv.dart';
import '../../../cubit/auth/signup/signup_cubit.dart';
import '../../../cubit/auth/signup/signup_state.dart';
import '../../functions/is_valid_gmail.dart';
import '../../functions/terms_dialog.dart';
import '../../../widgets/password_field.dart';
import '../../../widgets/form_text_field.dart';
import '../functions/is_vaild_password.dart';
import 'bottom_login_text.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
        spacing: width * 0.015,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FormTextField(
            label: AppLocalizations.of(context)!.full_name,
            controller: _nameController,
            hint: AppLocalizations.of(context)!.name_hint,
            validator: (value) {
              if (value == null || value.isEmpty) return AppLocalizations.of(context)!.required_name;
              return null;
            },
            autoValidateMode: AutovalidateMode.onUserInteraction,
            readOnly: false,
          ),
          FormTextField(
            label: AppLocalizations.of(context)!.auth_email,
            controller: _emailController,
            hint: AppLocalizations.of(context)!.email_hint,
            validator: (value) {
              if (value == null || value.isEmpty) return AppLocalizations.of(context)!.required_email;
              if (!isValidGmail(value)) return AppLocalizations.of(context)!.email_end;
              return null;
            },
            autoValidateMode: AutovalidateMode.onUserInteraction,
            readOnly: false,
          ),

          PasswordField(
            label: AppLocalizations.of(context)!.auth_password,
            labelColor: AppColor.labelColor,
            fillColor: AppColor.lightPink,
            controller: _passwordController,
            isVisible: _isPasswordVisible,
            onToggle: () => setState(() => _isPasswordVisible = !_isPasswordVisible),
            validator: (value) {
              if (value == null || value.isEmpty) return AppLocalizations.of(context)!.required_password;
              if (!isValidPassword(value)) {
                return AppLocalizations.of(context)!.min_password;
              }
              return null;
            },
          ),
          PasswordField(
            label:AppLocalizations.of(context)!.auth_confirm_password,
            labelColor: AppColor.labelColor,
            fillColor: AppColor.lightPink,
            controller: _confirmPasswordController,
            isVisible: _isConfirmPasswordVisible,
            onToggle: () => setState(() => _isConfirmPasswordVisible = !_isConfirmPasswordVisible),
            validator: (value) {
              if (value == null || value.isEmpty) return AppLocalizations.of(context)!.required_confirm_password;
              if (value != _passwordController.text) return AppLocalizations.of(context)!.password_do_not_match;
              return null;
            },
          ),
          SizedBox(height: width * .16),
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
          SizedBox(height: width * .039),
          Center(
            child: SizedBox(
              width: width * .57,
              height: width * .113,
              child: BlocListener<SignUpCubit,SignUpState>(
                listener: (context,state){
                  if(state is SuccessSignUp){
                    saveUserData(state.owner);
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => BNVScreen()));
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
                    backgroundColor:agreed ? AppColor.mainRedColor : Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    elevation: 5,
                  ),
                  child: Text(
                    AppLocalizations.of(context)!.auth_signup,
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
          SizedBox(height: width * .036),
          BottomLoginText(),
          SizedBox(height: 0.037),

        ],
      ),
    );
  }
}
