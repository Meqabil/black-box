
import 'package:black_box/features/auth/presentation/cubit/auth/new_password/password_cubit.dart';
import 'package:black_box/features/auth/presentation/screens/password/widgets/new_password/change_password_button.dart';
import 'package:black_box/features/auth/presentation/screens/password/widgets/new_password/new_password_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../../core/constants/global.dart';
import '../../widgets/password_field.dart';
import '../sign_up/functions/is_vaild_password.dart';
class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key,required this.email,required this.otp});
  final String email;
  final String otp;
  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
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
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SafeArea(
        child: Column(
          children: [
            // Page Title
            Container(
              height: height * 0.21,
              alignment: Alignment.center,
              child: Text(
                AppLocalizations.of(context)!.auth_new_password,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0,
                ),
              ),
            ),
            // Page Body
            Expanded(
              child: Container(
                width: width,
                decoration:  BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                    topRight: Radius.circular(70),
                  ),
                ),
                child: SingleChildScrollView(
                  keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                  padding:
                  EdgeInsets.symmetric(horizontal: width * .059, vertical: width * .09),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: width * .099,),
                        PasswordField(
                          label: AppLocalizations.of(context)!.auth_new_password,
                          fillColor: Colors.transparent,
                          labelColor: Colors.transparent,
                          controller: _newPasswordController,
                          isVisible: !obscureNew,
                          onToggle: () {
                            setState(() => obscureNew = !obscureNew);
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) return AppLocalizations.of(context)!.required_password;
                            if (!isValidPassword(value)) {
                              return AppLocalizations.of(context)!.min_password;
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: width * .095),
                        PasswordField(
                          label: AppLocalizations.of(context)!.auth_confirm_new_password,
                          fillColor: Colors.transparent,
                          labelColor: Colors.transparent,
                          isVisible: !obscureConfirm,
                          controller: _confirmPasswordController,
                          onToggle: () {
                            setState(() => obscureConfirm = !obscureConfirm);
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return AppLocalizations.of(context)!.auth_confirm_new_password;
                            }
                            if (value != _newPasswordController.text) {
                              return AppLocalizations.of(context)!.password_do_not_match;
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: width * .25),
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
