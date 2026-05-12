
import 'package:black_box/core/ui/snackbar/exception_snackbar.dart';
import 'package:black_box/core/ui/snackbar/success_snackbar.dart';
import 'package:black_box/core/ui/widgets/auth_input.dart';
import 'package:black_box/core/ui/widgets/notification_button.dart';
import 'package:black_box/features/auth/presentation/cubit/auth/new_password/password_cubit.dart';
import 'package:black_box/features/auth/presentation/cubit/auth/new_password/password_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/constants/global.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../auth/presentation/screens/sign_up/functions/is_vaild_password.dart';
class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  final _currentPasswordController = TextEditingController();
  final _newPasswordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  bool obscureCurrent = true;
  bool obscureNew = true;
  bool obscureConfirm = true;
  ExceptionSnackBar exceptionSnackBar = ExceptionSnackBar();
  SuccessSnackBar successSnackBar = SuccessSnackBar();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: width * 0.16,
        title: Text(AppLocalizations.of(context)!.change_password, style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: [
          NotificationButton(),
          SizedBox(width: width * 0.022,)
        ],
      ),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Container(
          padding: EdgeInsets.all(width * 0.09),
          margin: EdgeInsets.only(top: width * 0.022),
          height: height,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(60),
              topRight: Radius.circular(60),
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 15,),
              Expanded(
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(AppLocalizations.of(context)!.current_password, style: TextStyle(fontWeight: FontWeight.w600,color: Theme.of(context).colorScheme.onSurface)),
                      SizedBox(height: width * .025),
                      AuthInput(
                        controller: _currentPasswordController,
                        validator: (val){
                          if(val!.isEmpty){
                            return AppLocalizations.of(context)!.validation_empty_fields;
                          }
                          return null;
                        },
                        obscure: obscureCurrent, onTap: (){
                        setState(() {
                          obscureCurrent = !obscureCurrent;
                        });
                      }),
                      SizedBox(height: width * .13,),
                      Text(AppLocalizations.of(context)!.auth_new_password, style: TextStyle(fontWeight: FontWeight.w600,color: Theme.of(context).colorScheme.onSurface)),
                      SizedBox(height: width * .025),
                      AuthInput(
                        controller: _newPasswordController,
                        validator: (val){
                          if (val == null || val.isEmpty) return AppLocalizations.of(context)!.required_password;
                          if (!isValidPassword(val)) {
                            return AppLocalizations.of(context)!.password_requirement;
                          }
                          return null;
                        },
                        obscure: obscureNew, onTap: (){
                        setState(() {
                          obscureNew = !obscureNew;
                        });
                      }),
                      SizedBox(height: width * .13,),
                      Text(AppLocalizations.of(context)!.auth_confirm_password, style: TextStyle(fontWeight: FontWeight.w600,color: Theme.of(context).colorScheme.onSurface)),
                      SizedBox(height: width * .025),
                      AuthInput(
                        controller: _confirmPasswordController,
                        validator: (val){
                          if (val == null || val.isEmpty) return AppLocalizations.of(context)!.required_confirm_password;
                          if (val != _newPasswordController.text) return AppLocalizations.of(context)!.password_do_not_match;
                          return null;
                        },
                        obscure: obscureConfirm, onTap: (){
                        setState(() {
                          obscureConfirm = !obscureConfirm;
                        });
                      }),
                      SizedBox(height: width * .2,),
                      SizedBox(height: width * .025),
                      Center(
                        child: SizedBox(
                          width: width * 0.4513,
                          height: width * 0.11627,
                          child: BlocListener<PasswordCubit,PasswordState>(
                            listener: (context,state){
                              if(state is SuccessToChangePassword){
                                ScaffoldMessenger.of(context).showSnackBar(
                                  successSnackBar.show(AppLocalizations.of(context)!.password_changed_successfully)
                                );
                              }else if (state is FailedToChangePassword){
                                if(state.message == "failed"){
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      exceptionSnackBar.show(AppLocalizations.of(context)!.current_password_is_not_correct)
                                  );
                                }else{
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      exceptionSnackBar.show(state.message)
                                  );
                                }
                              }
                            },
                            child: ElevatedButton(
                              onPressed: (){
                                if(_formKey.currentState!.validate()){
                                  context.read<PasswordCubit>().changePassword(currentPassword: _currentPasswordController.text.trim(), newPassword: _newPasswordController.text.trim());
                                  return;
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Theme.of(context).colorScheme.primary,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                                elevation: 2,
                              ),
                              child: Text(
                                AppLocalizations.of(context)!.change_password,
                                style: TextStyle(color: Colors.white, fontSize: width * 0.03488, fontWeight: FontWeight.bold),
                              ),
                            )
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


