
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:course1/assignment4.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Splash_Animated extends StatelessWidget {
  const Splash_Animated({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splashIconSize: 900,
        splash:  Image.asset('assets/img/notes.png'),
        backgroundColor: Colors.white,
        pageTransitionType:PageTransitionType.topToBottom,
        splashTransition: SplashTransition.rotationTransition,


        nextScreen: listt(),
        animationDuration: const Duration(seconds: 0));

  }
}