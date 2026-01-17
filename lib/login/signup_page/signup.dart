import 'package:flutter/material.dart';
import 'package:grad_project/login/login_pages/login_screen.dart';
import 'package:grad_project/login/signup_page/signup_success.dart';


class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;

  final Color _mainRedColor = const Color(0xFFA30015);
  final Color _inputBgColor = const Color(0xFFFADBD8);
  final Color _labelColor = const Color(0xFF1A1A1A);

  final _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  // Email validation (Gmail only)
  bool isValidGmail(String email) {
    return RegExp(r'^[a-zA-Z0-9._%+-]+@gmail\.com$').hasMatch(email);
  }

  // Mobile validation (11 digits)
  bool isValidMobile(String mobile) {
    return RegExp(r'^\d{11}$').hasMatch(mobile);
  }

  // Password validation (min 6 chars, at least 1 letter & 1 number)
  bool isValidPassword(String password) {
    return RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$').hasMatch(password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _mainRedColor,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        bottom: false,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            children: [
              const SizedBox(height: 60),
              const Text(
                "Create Account",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 80),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        left: 25, right: 25, top: 30, bottom: MediaQuery.of(context).viewInsets.bottom),
                    physics: const BouncingScrollPhysics(),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildInputField(
                            label: "Full Name",
                            controller: _nameController,
                            hint: "John Doe",
                            validator: (value) {
                              if (value == null || value.isEmpty) return "Full Name is required";
                              return null;
                            },
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                          ),
                          _buildInputField(
                            label: "Email",
                            controller: _emailController,
                            hint: "example@gmail.com",
                            validator: (value) {
                              if (value == null || value.isEmpty) return "Email is required";
                              if (!isValidGmail(value)) return "Email must end with @gmail.com";
                              return null;
                            },
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                          ),
                          _buildInputField(
                            label: "Mobile Number",
                            controller: _mobileController,
                            hint: "+20113 456 789",
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              if (value == null || value.isEmpty) return "Mobile Number is required";
                              if (!isValidMobile(value)) return "Mobile Number must be 11 digits";
                              return null;
                            },
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                          ),
                          _buildInputField(
                            label: "Date Of Birth",
                            controller: _dobController,
                            hint: "DD / MM / YYYY",
                            readOnly: true,
                            onTap: () async {
                              DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime(2000, 1, 1),
                                firstDate: DateTime(1900),
                                lastDate: DateTime.now(),
                              );
                              if (pickedDate != null) {
                                String formattedDate =
                                    "${pickedDate.day.toString().padLeft(2, '0')} / "
                                    "${pickedDate.month.toString().padLeft(2, '0')} / "
                                    "${pickedDate.year}";
                                setState(() {
                                  _dobController.text = formattedDate;
                                });
                              }
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) return "Date Of Birth is required";
                              return null;
                            },
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                          ),
                          _buildPasswordField(
                            label: "Password",
                            controller: _passwordController,
                            isVisible: _isPasswordVisible,
                            onToggle: () => setState(() => _isPasswordVisible = !_isPasswordVisible),
                            validator: (value) {
                              if (value == null || value.isEmpty) return "Password is required";
                              if (!isValidPassword(value)) {
                                return "Password must be at least 6 characters and contain numbers";
                              }
                              return null;
                            },
                          ),
                          _buildPasswordField(
                            label: "Confirm Password",
                            controller: _confirmPasswordController,
                            isVisible: _isConfirmPasswordVisible,
                            onToggle: () => setState(() => _isConfirmPasswordVisible = !_isConfirmPasswordVisible),
                            validator: (value) {
                              if (value == null || value.isEmpty) return "Confirm Password is required";
                              if (value != _passwordController.text) return "Passwords do not match";
                              return null;
                            },
                          ),
                          const SizedBox(height: 20),
                          _buildTermsText(),
                          const SizedBox(height: 20),
                          Center(
                            child: SizedBox(
                              width: 250,
                              height: 50,
                              child: ElevatedButton(
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const SignupSuccess()),
                                    );
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: _mainRedColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  elevation: 5,
                                ),
                                child: const Text(
                                  "Sign Up",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 15),
                          _buildBottomLoginText(),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInputField({
    required String label,
    required TextEditingController controller,
    required String hint,
    TextInputType keyboardType = TextInputType.text,
    bool readOnly = false,
    VoidCallback? onTap,
    String? Function(String?)? validator, required AutovalidateMode autovalidateMode,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLabel(label),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          readOnly: readOnly,
          onTap: onTap,
          validator: validator,
          decoration: _inputDecoration(hint: hint),
        ),
        const SizedBox(height: 15),
      ],
    );
  }

  Widget _buildPasswordField({
    required String label,
    required TextEditingController controller,
    required bool isVisible,
    required VoidCallback onToggle,
    String? Function(String?)? validator,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLabel(label),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          obscureText: !isVisible,
          validator: validator,
          decoration: _inputDecoration(
            hint: "● ● ● ● ● ● ●",
            suffixIcon: IconButton(
              icon: Icon(
                isVisible ? Icons.visibility : Icons.visibility_off,
                color: Colors.grey[700],
              ),
              onPressed: onToggle,
            ),
            
          ),
        ),
        const SizedBox(height: 15),
      ],
    );
  }

  Widget _buildLabel(String text) => Text(
        text,
        style: TextStyle(color: _labelColor, fontWeight: FontWeight.bold, fontSize: 14),
      );

  InputDecoration _inputDecoration({required String hint, Widget? suffixIcon,}) => InputDecoration(
        filled: true,
        fillColor: _inputBgColor,
        hintText: hint,
        hintStyle: TextStyle(color: Colors.grey[600], fontSize: 14),
        suffixIcon: suffixIcon,
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30), borderSide: BorderSide.none),
      );

  Widget _buildTermsText() => Center(
        child: Text.rich(
          TextSpan(
            text: "By continuing, you agree to\n",
            style: TextStyle(fontSize: 12, color: Colors.grey[800]),
            children: [
              TextSpan(
                text: "Terms of Use",
                style: TextStyle(color: Colors.grey[800], fontWeight: FontWeight.bold),
              ),
              const TextSpan(text: " and "),
              TextSpan(
                text: "Privacy Policy.",
                style: TextStyle(color: Colors.grey[800], fontWeight: FontWeight.bold),
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      );

  Widget _buildBottomLoginText() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Already have an account? ", style: TextStyle(color: Colors.grey[600])),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen()),
              );
            },
            child: const Text(
              "Log In",
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      );
}
