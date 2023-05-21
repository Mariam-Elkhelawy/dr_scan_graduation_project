import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:dr_scan_graduation_project/constants.dart';
import 'package:dr_scan_graduation_project/pages/result_page.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);
  static String id = 'LoadingPage';

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  Widget build(BuildContext context) {
    return  AnimatedSplashScreen(
      animationDuration: Duration(milliseconds: 2000),
      splash: Column(
        children: [
          Padding(
              padding: const EdgeInsets.only(),
              child: DefaultTextStyle(
                style: TextStyle(
                    fontSize: 24,
                    fontFamily: kRoboto,
                    color: kWhiteColor,
                    fontWeight: FontWeight.w500),
                child:Text('Waiting for results') ,
              )
          ),
          SizedBox(height: 15 ,),

          LoadingAnimationWidget.horizontalRotatingDots(color: kWhiteColor , size: 35)

        ],
      ),
      nextScreen: ResultPage(),
      backgroundColor: Color(0xff1F1F1F).withOpacity(.9),
    );
  }

}

