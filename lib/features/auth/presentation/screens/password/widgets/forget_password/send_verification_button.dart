import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../../core/constants/global.dart';
import '../../../../../../../core/ui/snackbar/exception_snackbar.dart';
import '../../../../../../../core/ui/snackbar/success_snackbar.dart';
import '../../../../cubit/auth/new_password/password_cubit.dart';
import '../../../../cubit/auth/new_password/password_state.dart';
import '../../security_pin_screen.dart';

class SendVerificationButton extends StatefulWidget {
  const SendVerificationButton({super.key,required this.backgroundColor,required this.email,required this.onPressed});
  final Color backgroundColor;
  final String email;
  final void Function()? onPressed;
  @override
  State<SendVerificationButton> createState() => _SendVerificationButtonState();
}

class _SendVerificationButtonState extends State<SendVerificationButton> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: width * .57,
        height: width * .113,
        child: BlocListener<PasswordCubit,PasswordState>(
          listener: (context,state){
            if(state is SuccessPassword){
              SuccessSnackBar snack = SuccessSnackBar();
              ScaffoldMessenger.of(context).showSnackBar(snack.show(state.message));
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecurityPinScreen(email: widget.email.trim())));
            } else if(state is FailurePassword){
              ExceptionSnackBar snack = ExceptionSnackBar();
              ScaffoldMessenger.of(context).showSnackBar(snack.show(state.message));
            }
          },
          child: ElevatedButton(
            onPressed: widget.onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: widget.backgroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            child: Text(
              "Send Verification Code",
              style: TextStyle(
                color: Colors.white,
                fontSize: width * .0315,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
