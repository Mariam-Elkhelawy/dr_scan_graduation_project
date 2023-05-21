import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:dr_scan_graduation_project/constants.dart';
import 'package:dr_scan_graduation_project/pages/about_us.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:page_transition/page_transition.dart';


class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);
  static String id = 'SplashPage';
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      animationDuration: Duration(milliseconds: 2000),
      splashIconSize: 400,
      splash: Column(
        children: [
          SizedBox(height: 140,),
          Image.asset(kLogo),
          SizedBox(height: 95,),
          LoadingAnimationWidget.hexagonDots(
            color: Colors.white,
            size: 45,
          ),
        ],
      ),
      nextScreen: AboutUs(),
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.fade,
      backgroundColor: kPrimaryColor,
    );
  }
}