import 'dart:async';
import 'package:black_box/features/auth/presentation/screens/login/login_screen.dart';

import 'package:flutter/material.dart';

class NewPasswordSuccessScreen extends StatefulWidget {
  const NewPasswordSuccessScreen({super.key});

  @override
  State<NewPasswordSuccessScreen> createState() => _NewPasswordSuccessScreenState();
}

class _NewPasswordSuccessScreenState extends State<NewPasswordSuccessScreen> {
  int _visibleDots = 0;
  bool _showCheck = false;
  @override
  void initState() {
    super.initState();
    _startAnimation();
  }

  void move(){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen()));
  }
  void _startAnimation() async {
    // Every 400 ms show dot after that show check icon then move
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
    await Future.delayed(const Duration(milliseconds: 500));
    move();
  }

  // Dot Widget
  Widget _buildDot(bool visible) {
    return AnimatedOpacity(
      opacity: visible ? 1 : 0,
      duration: const Duration(milliseconds: 250),
      child: Container(
        width: 15,
        height: 15,
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 120,
                  height: 120,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 8),
                  ),
                  child: _showCheck
                      ? Container()
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
                _showCheck ? TweenAnimationBuilder<double>(
                    tween: Tween(
                        begin: 160,
                        end: _showCheck ? 90 : 160
                    ),
                    duration: Duration(milliseconds: 600),
                    builder: (context,size,child) {
                      return Icon(
                        Icons.check_rounded,
                        key: ValueKey('check'),
                        color: Colors.white,
                        size: size,
                      );
                    }
                ) : Container(),
                TweenAnimationBuilder<double>(
                  tween: Tween(
                    begin: 120,
                    end: _showCheck ? 30 : 120,
                  ),
                  duration: Duration(milliseconds: 600),
                  builder: (context,size,child){
                    return AnimatedOpacity(
                      opacity: _showCheck ? 0 : 1,
                      duration: Duration(milliseconds: 1000),
                      child: Container(
                        width: size,
                        height: size,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 5),
                        ),
                      ),
                    );
                  },
                )
              ],
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
                  fontSize: 25,
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