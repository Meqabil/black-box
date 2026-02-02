import 'package:flutter/material.dart';
import 'package:grad_project/hom-e/bnv/bnv.dart';
import 'package:grad_project/login/login_pages/login_screen.dart';

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
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  bool _termsAccepted = false; 

  bool isValidGmail(String email) {
    return RegExp(r'^[a-zA-Z0-9._%+-]+@gmail\.com$').hasMatch(email);
  }

  bool isValidMobile(String mobile) {
    return RegExp(r'^\d{11}$').hasMatch(mobile);
  }

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
                      left: 25,
                      right: 25,
                      top: 30,
                      bottom: MediaQuery.of(context).viewInsets.bottom,
                    ),
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
                              if (value == null || value.isEmpty) {
                                return "Full Name is required";
                              }
                              return null;
                            },
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                          ),
                          _buildInputField(
                            label: "Email",
                            controller: _emailController,
                            hint: "example@gmail.com",
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Email is required";
                              }
                              if (!isValidGmail(value)) {
                                return "Email must end with @gmail.com";
                              }
                              return null;
                            },
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                          ),
                          _buildInputField(
                            label: "Mobile Number",
                            controller: _mobileController,
                            hint: "+20113 456 789",
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Mobile Number is required";
                              }
                              if (!isValidMobile(value)) {
                                return "Mobile Number must be 11 digits";
                              }
                              return null;
                            },
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
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
                              if (value == null || value.isEmpty) {
                                return "Date Of Birth is required";
                              }
                              return null;
                            },
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                          ),
                          _buildPasswordField(
                            label: "Password",
                            controller: _passwordController,
                            isVisible: _isPasswordVisible,
                            onToggle: () => setState(
                              () => _isPasswordVisible = !_isPasswordVisible,
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Password is required";
                              }
                              if (!isValidPassword(value)) {
                                return "Password must be at least 6 characters \n and contain numbers";
                              }
                              return null;
                            },
                          ),
                          _buildPasswordField(
                            label: "Confirm Password",
                            controller: _confirmPasswordController,
                            isVisible: _isConfirmPasswordVisible,
                            onToggle: () => setState(
                              () => _isConfirmPasswordVisible =
                                  !_isConfirmPasswordVisible,
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Confirm Password is required";
                              }
                              if (value != _passwordController.text) {
                                return "Passwords do not match";
                              }
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
                                onPressed: _termsAccepted &&
                                        _formKey.currentState!.validate()
                                    ? () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const BNVScreen(),
                                          ),
                                        );
                                      }
                                    : null,  
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
    String? Function(String?)? validator,
    required AutovalidateMode autovalidateMode,
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
        style: TextStyle(
          color: _labelColor,
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
      );

  InputDecoration _inputDecoration({
    required String hint,
    Widget? suffixIcon,
  }) =>
      InputDecoration(
        filled: true,
        fillColor: _inputBgColor,
        hintText: hint,
        hintStyle: TextStyle(color: Colors.grey[600], fontSize: 14),
        suffixIcon: suffixIcon,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
      );

  Widget _buildTermsText() => Center(
        child: GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (BuildContext context) {
                return StatefulBuilder(
                  builder: (context, setState) {
                    return Dialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width * .95,
                        height: MediaQuery.of(context).size.height * 0.9,
                        padding: const EdgeInsets.all(20),
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                const SizedBox(height: 40),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Terms and Conditions",
                                    style: TextStyle(
                                      color: _mainRedColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 15),
                                Expanded(
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const Text(
                                          "1. Acceptance of Terms\n"
                                          "By installing or revealing this application, you agree to these Terms and Conditions. If you do not agree, please discontinue use of the app.\n\n"
                                          "2. Purpose of the Application\n"
                                          "This application is a vehicle black box and telematics system used to monitor vehicle performance and driving behavior for informational, safety, and analytical purposes only.\n\n"
                                          "3. Data Parameters Collected\n"
                                          "The application may collect and process vehicle and driving data, including but not limited to:\n\n"
                                          "• Vehicle speed\n"
                                          "• Fuel consumption and fuel level\n"
                                          "• Acceleration and deceleration\n"
                                          "• Harsh braking and rapid acceleration events\n"
                                          "• Sharp cornering\n"
                                          "• GPS location data (latitude and longitude)\n"
                                          "• Trip distance, duration, and time\n"
                                          "• Driver and vehicle identification data\n\n"
                                          "By using the app, you explicitly consent to the collection of these parameters.\n\n"
                                          "4. Service Availability\n"
                                          "Continuous, real-time, or error-free operation of the app is not guaranteed due to technical limitations.",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w100,
                                          ),
                                        ),
                                        const SizedBox(height: 20),
                                        Row(
                                          children: [
                                            Checkbox(
                                              value: _termsAccepted,
                                              onChanged: (value) {
                                                setState(() {
                                                  _termsAccepted =
                                                      value ?? false;
                                                });
                                              },
                                            ),
                                            const Expanded(
                                              child: Text(
                                                  "I accept all the terms and conditions"),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              right: 0,
                              top: 0,
                              child: IconButton(
                                icon: const Icon(Icons.close),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            );
          },
          child: Text.rich(
            TextSpan(
              text: "By continuing, you agree to\n",
              style: TextStyle(fontSize: 12, color: Colors.grey[800]),
              children: [
                TextSpan(
                  text: "Terms of Use and Conditions Policy.",
                  style: TextStyle(
                    color: _mainRedColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
        ),
      );

  Widget _buildBottomLoginText() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Already have an account? ",
            style: TextStyle(color: Colors.grey[600]),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen()),
              );
            },
            child: Text(
              "Log In",
              style:
                  TextStyle(color: _mainRedColor, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      );
}
