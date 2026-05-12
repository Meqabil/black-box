
import 'package:black_box/core/constants/global.dart';
import 'package:black_box/core/network/network_info.dart';
import 'package:black_box/core/network/network_info_imp.dart';
import 'package:black_box/features/auth/presentation/screens/login/widgets/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  NetworkInfo network = NetworkInfoImpl();
  final bool _isPasswordVisible = false;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        bottom: false,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: LayoutBuilder(builder: (context, constraints) {
            return CustomScrollView(
              physics: const PageScrollPhysics(),
              slivers: [
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: height - width * 0.048,
                    width: width,
                    child: Column(
                      children: [
                        Container(
                          height: height * 0.21,
                          alignment: Alignment.center,
                          child: Text(
                            AppLocalizations.of(context)!.onboarding_title_1,
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
                            padding: EdgeInsets.only(left: width * .049,right: width * .049, top: width * 0.048,bottom: 0),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.secondary,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(70),
                                topRight: Radius.circular(70),
                              ),
                            ),
                            child: LoginForm(formKey: _formKey,textColor: Theme.of(context).colorScheme.onSurface, emailController: _emailController, passwordController: _passwordController, isPasswordVisible: _isPasswordVisible,),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            );
          }),
        ),
      ),
    );
  }
}