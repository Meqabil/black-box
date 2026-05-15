import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../core/utils/snackbar_helper.dart';
import '../../../../cubit/auth/new_password/password_cubit.dart';
import '../../../../cubit/auth/new_password/password_state.dart';
import '../../new_password_success.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class ChangePasswordButton extends StatelessWidget {
  const ChangePasswordButton({super.key,required this.onPressed});
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 50,
      child: BlocListener<PasswordCubit,PasswordState>(
        listener: (context,state){
          if(state is SuccessPassword){
            ScaffoldMessenger.of(context).showSnackBar(
                successSnackBar(state.message)
            );
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewPasswordSuccessScreen()));
          } else if(state is FailurePassword){
            ScaffoldMessenger.of(context).showSnackBar(
                exceptionSnackBar(state.message)
            );
          }
        },
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          onPressed: onPressed,
          child: Text(
            AppLocalizations.of(context)!.change_password,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
