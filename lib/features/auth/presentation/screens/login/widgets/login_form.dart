import 'package:black_box/features/auth/presentation/screens/login/widgets/forget_password_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../core/constants/global.dart';
import '../../../../../../bnv.dart';
import '../../../../../../core/theme/app_color.dart';
import '../../../../../../core/utils/snackbar_helper.dart';
import '../../../../../../core/utils/user_data_helper.dart';
import '../../../cubit/auth/login/login_cubit.dart';
import '../../../cubit/auth/login/login_state.dart';
import '../../../functions/is_valid_gmail.dart';
import '../../../widgets/form_text_field.dart';
import '../../../widgets/password_field.dart';
import 'bottom_register_text.dart';
import 'login_button.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class LoginForm extends StatefulWidget {
  LoginForm({
    super.key,
    required this.formKey,
    required this.textColor,
    required this.emailController,
    required this.passwordController,
    required this.isPasswordVisible,
  });
  final GlobalKey<FormState> formKey;
  final Color textColor;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  bool isPasswordVisible = false;

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Padding(
        padding:  EdgeInsets.only(left: width * 0.045,right:width * 0.045,top:width * 0.15),
        child: Column(
          children: [
            FormTextField(
              label: AppLocalizations.of(context)!.auth_email,
              hint: AppLocalizations.of(context)!.email_hint,
              controller: widget.emailController,
              validator: (value) {
                if (value == null || value.isEmpty) return AppLocalizations.of(context)!.required_email;
                if (!isValidGmail(value)) return AppLocalizations.of(context)!.email_end;
                return null;
              },
              autoValidateMode: AutovalidateMode.onUserInteraction,
              readOnly: false,
            ),
            SizedBox(height: width * 0.062),
            SizedBox(height: width * 0.029),
            PasswordField(
              label: AppLocalizations.of(context)!.auth_password,
              labelColor: AppColor.labelColor,
              fillColor: AppColor.lightPink,
              controller: widget.passwordController,
              isVisible: widget.isPasswordVisible,
              onToggle: () => setState(() => widget.isPasswordVisible = !widget.isPasswordVisible),
              validator: (value) {
                if (value == null || value.isEmpty) return AppLocalizations.of(context)!.required_password;
                return null;
              },

            ),
            const SizedBox(height: 70),


            BlocConsumer<LoginCubit,LoginState>(
              listener: (context,state){
                if(state is LoginFailure){

                  ScaffoldMessenger.of(context).showSnackBar(
                      exceptionSnackBar(state.message)
                  );
                }
                else if(state is LoginSuccess){
                  saveUserData(state.owner);
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => BNVScreen()));
                }
              },
              builder: (context, st) {
                if(st is LoginLoading){
                  return Center(child: CircularProgressIndicator(),);
                }
                return LoginButton(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    onPressed: () {
                      if (widget.formKey.currentState!.validate()) {
                        context.read<LoginCubit>().login(widget.emailController.text.trim(),widget.passwordController.text.trim());
                      }
                    }
                );
              },
            ),
            ForgetPasswordButton(),
            Spacer(),
            BottomRegisterText(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
