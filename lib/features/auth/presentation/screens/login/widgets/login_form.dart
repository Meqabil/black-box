import 'package:black_box/features/auth/presentation/screens/login/widgets/forget_password_button.dart';
import 'package:black_box/features/auth/presentation/screens/login/widgets/password_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../core/constants/colors.dart';
import '../../../../../../core/constants/global.dart';
import '../../../../../../core/ui/snackbar/exception_snackbar.dart';
import '../../../../../home/screens/bnv.dart';
import '../../../bloc/auth/login/login_cubit.dart';
import '../../../bloc/auth/login/login_state.dart';
import '../../functions/is_valid_gmail.dart';
import 'bottom_register_text.dart';
import 'form_text_field.dart';
import '../../../widgets/input_label.dart';
import 'login_button.dart';

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          InputLabel(text:"Username Or Email",textColor: widget.textColor),
          const SizedBox(height: 8),
          FormTextField(
            hint: "example@gmail.com",
            controller: widget.emailController,
            textFieldColor: textFieldColor,
            validator: (value) {
              if (value == null || value.isEmpty) return "Email is required";
              if (!isValidGmail(value)) return "Email must end with @gmail.com";
              return null;
            },
            autoValidateMode: AutovalidateMode.onUserInteraction,
          ),
          const SizedBox(height: 30),
          InputLabel(text:"Password",textColor: widget.textColor),
          const SizedBox(height: 8),
          PasswordField(
            controller: widget.passwordController,
            isPasswordVisible: widget.isPasswordVisible,
            textFieldColor: textFieldColor,
            onPressed: () => setState(() => widget.isPasswordVisible = !widget.isPasswordVisible),
            validator: (value) {
              if (value == null || value.isEmpty) return "Password is required";
              return null;
            },
            autoValidateMode: AutovalidateMode.onUserInteraction,
          ),
          const SizedBox(height: 70),


          BlocConsumer<LoginCubit,LoginState>(
            listener: (context,state){
              if(state is LoginFailure){
                ExceptionSnackBar snack = ExceptionSnackBar();
                ScaffoldMessenger.of(context).showSnackBar(
                    snack.show(state.message)
                );
              }
              else if(state is LoginSuccess){
                saveUserData(state.owner);
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => BNVScreen()));
              }
              else if(state is LoginLoading){

              }
            },
            builder: (context, st) {
              return LoginButton(
                  backgroundColor: mainRedColor,
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
    );
  }
}
