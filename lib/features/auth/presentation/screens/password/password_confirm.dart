import 'dart:async';
import 'package:flutter/material.dart';

class PasswordSuccessScreen extends StatefulWidget {
  const PasswordSuccessScreen({super.key});

  @override
  State<PasswordSuccessScreen> createState() => _PasswordSuccessScreenState();
}

class _PasswordSuccessScreenState extends State<PasswordSuccessScreen> {
  int _visibleDots = 0;
  bool _showCheck = false;

  @override
  void initState() {
    super.initState();
    _startAnimation();
  }

  void _startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 400));
    setState(() => _visibleDots = 1);

    await Future.delayed(const Duration(milliseconds: 400));
    setState(() => _visibleDots = 2);

    await Future.delayed(const Duration(milliseconds: 400));
    setState(() => _visibleDots = 3);

    await Future.delayed(const Duration(milliseconds: 600));

    setState(() {
      _showCheck = true;
    });
  }

  Widget _buildDot(bool visible) {
    return AnimatedOpacity(
      opacity: visible ? 1 : 0,
      duration: const Duration(milliseconds: 250),
      child: Container(
        width: 10,
        height: 10,
        margin: const EdgeInsets.symmetric(horizontal: 6),
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFB00000),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 4),
              ),
              child: Center(
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 400),
                  child: _showCheck
                      ? const Icon(
                          Icons.check,
                          key: ValueKey('check'),
                          color: Colors.white,
                          size: 50,
                        )
                      : Row(
                          key: const ValueKey('dots'),
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            _buildDot(_visibleDots >= 1),
                            _buildDot(_visibleDots >= 2),
                            _buildDot(_visibleDots >= 3),
                          ],
                        ),
                ),
              ),
            ),

            const SizedBox(height: 30),

            AnimatedOpacity(
              opacity: _showCheck ? 1 : 0,
              duration: const Duration(milliseconds: 500),
              child: const Text(
                "Password Has Been\nChanged Successfully",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
