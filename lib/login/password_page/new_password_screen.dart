import 'package:flutter/material.dart';
import 'package:grad_project/login/password_page/new_password_confirm.dart';

class NewPasswordPage extends StatefulWidget {
  const NewPasswordPage({super.key});
  @override
  State<NewPasswordPage> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordPage> {
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
      backgroundColor: const Color(0xFFB00000),
      appBar: AppBar(
        backgroundColor: const Color(0xFFB00000),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "New Password",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 125),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: const BoxDecoration(
          color: Color(0xFFF2FFF4),
          borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
        ),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: IntrinsicHeight(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _passwordField(
                          label: "New Password",
                          controller: _newPasswordController,
                          obscure: obscureNew,
                          onToggle: () {
                            setState(() => obscureNew = !obscureNew);
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Password is required";
                            }
                            if (value.length < 6) {
                              return "Password must be at least 6 characters";
                            }
                            if (!RegExp(r'[A-Z]').hasMatch(value)) {
                              return "Password must contain at least one uppercase letter";
                            }
                            if (!RegExp(r'[a-z]').hasMatch(value)) {
                              return "Password must contain at least one lowercase letter";
                            }
                            if (!RegExp(r'\d').hasMatch(value)) {
                              return "Password must contain at least one number";
                            }
                            if (!RegExp(
                              r'[!@#$%^&*(),.?":{}|<>]',
                            ).hasMatch(value)) {
                              return "Password must contain at least one special character";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 20),
                        _passwordField(
                          label: "Confirm New Password",
                          controller: _confirmPasswordController,
                          obscure: obscureConfirm,
                          onToggle: () {
                            setState(() => obscureConfirm = !obscureConfirm);
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please confirm your password";
                            }
                            if (value != _newPasswordController.text) {
                              return "Passwords do not match";
                            }
                            return null;
                          },
                        ),
                        
                        const SizedBox(height: 150),
                        SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFB00000),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            onPressed: _submit,
                            child: const Text(
                              "Change Password",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const PasswordSuccessScreen()),
      );
    }
  }
}

Widget _passwordField({
  required String label,
  required TextEditingController controller,
  required bool obscure,
  required VoidCallback onToggle,
  required String? Function(String?) validator,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(label, style: const TextStyle(fontWeight: FontWeight.w600)),
      const SizedBox(height: 8),
      TextFormField(
        controller: controller,
        obscureText: obscure,
        validator: validator,
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xFFFFE5E5),
          suffixIcon: IconButton(
            icon: Icon(obscure ? Icons.visibility_off : Icons.visibility),
            onPressed: onToggle,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    ],
  );
}
