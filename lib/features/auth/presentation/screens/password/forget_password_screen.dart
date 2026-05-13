import 'package:black_box/features/auth/presentation/screens/password/widgets/forget_password/check_email.dart';
import 'package:black_box/features/auth/presentation/screens/password/widgets/forget_password/send_verification_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/constants/global.dart';
import '../../cubit/auth/new_password/password_cubit.dart';
import '../../widgets/input_label.dart';
import '../functions/is_valid_gmail.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
        _emailError = AppLocalizations.of(context)!.email_end;
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
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: height * 0.21,
              alignment: Alignment.center,
              child: Text(
                AppLocalizations.of(context)!.auth_forgot_password.replaceFirst('?', ''),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0,
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                    topRight: Radius.circular(70),
                  ),
                ),
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * .063,
                    vertical: width * .13,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppLocalizations.of(context)!.auth_reset_password,
                        style: TextStyle(
                          fontSize: width * 0.042,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.onSurface
                        ),
                      ),
                      SizedBox(height: width * 0.45 /5 ),
                      Text(
                        AppLocalizations.of(context)!.forget_password_title,
                        style: TextStyle(color: Colors.grey[600], fontSize: width * 0.035),
                      ),
                      SizedBox(height: width * .18),
                      InputLabel(text: AppLocalizations.of(context)!.auth_enter_email, textColor: Theme.of(context).colorScheme.onSurface,),
                      SizedBox(height: width * .022),
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
                              _emailError = AppLocalizations.of(context)!.email_end;
                              _isEmailValid.value = false;
                            });
                          }
                        },
                      ),
                      SizedBox(height: width * .09),
                      ValueListenableBuilder(
                          valueListenable: _isEmailValid,
                          builder: (context, value, child) {
                            return SendVerificationButton(
                              email: _emailController.text,
                              backgroundColor: _isEmailValid.value
                                  ? Theme.of(context).colorScheme.primary
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