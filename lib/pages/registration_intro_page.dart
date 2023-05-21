import 'dart:ui';
import 'package:dr_scan_graduation_project/constants.dart';
import 'package:dr_scan_graduation_project/pages/login_page.dart';
import 'package:dr_scan_graduation_project/pages/signup_page.dart';
import 'package:dr_scan_graduation_project/pages/skipregistration_page.dart';
import 'package:dr_scan_graduation_project/widgets/custom_button.dart';
import 'package:dr_scan_graduation_project/widgets/customicon_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:text_divider/text_divider.dart';

class RegistrationIntroPage extends StatefulWidget {
  RegistrationIntroPage({Key? key}) : super(key: key);
  static String id = 'RegistrationIntroPage';

  @override
  State<RegistrationIntroPage> createState() => _RegistrationIntroPageState();
}

class _RegistrationIntroPageState extends State<RegistrationIntroPage> {
  bool isSign = false;

  bool isLogin = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Stack(children: [
        Positioned( top: 10,
            child: Image.asset('assets/images/Union.png')),
        Positioned(
          top: 100,
          child: Image.asset(
            'assets/images/first_registration.gif',
            width: 420,
            height: 420,
          ),
        ),
        Positioned( top: 100,
            child: Image.asset('assets/images/Union.png')),

        Column(
          children: [
            SizedBox(
              height: 500,
            ),
            CustomButton(
              onTap: () { setState(() {
                isLogin = true;
              });
                Navigator.popAndPushNamed(context, LoginPage.id);
              },
              text: 'Log-In',
              size: 20,
              width: 295,
              height: 45,
              color: isLogin?Color(0xff027189) :kPrimaryColor,
              borderRadius: 8,
              fontweight: FontWeight.w500,
              textColor: kWhiteColor,
              borderColor: kPrimaryColor,
            ),
            SizedBox(
              height: 18,
            ),
            CustomButton(
              onTap: () { setState(() {
                isSign = true;
              });
                Navigator.popAndPushNamed(context, SignupPage.id);
              },
              text: 'Sign-Up',
              size: 20,
              width: 295,
              height: 45,
              color: isSign?Color(0xffA5B3B6):Color(0xffB6CED3),
              borderRadius: 8,
              fontweight: FontWeight.w500,
              textColor: kWhiteColor,
              borderColor:isSign?Color(0xffA5B3B6):Color(0xffB6CED3),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 41),
              child: Row(
                children: [
                  CustomIconButton(
                    icon: Logo(
                      Logos.google,
                      size: 24,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CustomIconButton(

                      icon: Icon(
                    Icons.facebook,
                    color: Color(0xff1778F2),
                    size: 30,
                  ))
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: TextDivider.horizontal(
                    text: Text(
                      ' OR',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        fontFamily: kRoboto,
                      ),
                    ),
                    thickness: 1,
                    color: Color(0xff565656),
                    indent: 8,
                    endIndent: 8)),
            Padding(
              padding: const EdgeInsets.only(left: 85, right: 60, top: 25),
              child: GestureDetector(
                onTap: () {
                  showDialog(
                      barrierColor: Color(0xff2C2C2C).withOpacity(.5),
                      barrierDismissible: false,
                      context: context,
                      builder: (context) {
                        return BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                          child: CupertinoAlertDialog(
                            title: Center(
                              child: Text(
                                'Dear User',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: kRoboto,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            content: Text(
                              """If you continue without registration , you will lose some of features , So we recommend logining for you.""",
                              style: TextStyle(
                                  color: Color(0xff6B6B6B),
                                  fontSize: 16,
                                  fontFamily: kRoboto,
                                  fontWeight: FontWeight.w500),
                            ),
                            actions: [
                              CupertinoDialogAction(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, SkipRegistrationPage.id);
                                  },
                                  child: Text(
                                    'Continue',
                                    style: TextStyle(
                                        fontFamily: kRoboto,
                                        color: kPrimaryColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18),
                                  )),
                              CupertinoDialogAction(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    'Cancel',
                                    style: TextStyle(
                                        fontFamily: kRoboto,
                                        color: kPrimaryColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18),
                                  ))
                            ],
                          ),
                        );
                      });
                },
                child: Row(
                  children: [
                    Text(
                      'Continue Without ',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          fontFamily: kRoboto,
                          color: kGreyColor),
                    ),
                    Text(
                      'Registeration',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        fontFamily: kRoboto,
                        color: kGreyColor,
                        decoration: TextDecoration.underline,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ]),
    );
  }
}
