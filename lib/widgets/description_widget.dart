import 'package:dr_scan_graduation_project/constants.dart';
import 'package:dr_scan_graduation_project/pages/registration_intro_page.dart';
import 'package:dr_scan_graduation_project/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DescriptionWidget extends StatelessWidget {
  DescriptionWidget(
      {required this.screenName,
      this.skipText,
      required this.buttonText,
      required this.screenImage,
      required this.onTap,
      required this.onpressed,
      required this.description});
  String screenName;
  String? skipText;
  String buttonText;
  String screenImage;
  VoidCallback? onTap;
  VoidCallback? onpressed;
  String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset('assets/images/Frame.png'),
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    IconButton(
                      onPressed: onpressed,
                      icon: Icon(
                        FontAwesomeIcons.arrowLeft,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      screenName,
                      style: TextStyle(
                          fontSize: 24,
                          fontFamily: kRoboto,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 138,
                    ),
                    if (skipText != null)
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.popAndPushNamed(
                                context, RegistrationIntroPage.id);
                          },
                          child: Text(
                            skipText!,
                            style: TextStyle(
                                fontFamily: kRoboto,
                                fontSize: 15,
                                decoration: TextDecoration.underline,
                                color: Color(0xffF2F2F2)),
                          ),
                        ),
                      )
                  ],
                ),
              ),
              Positioned(
                top: 145,left: 32,right: 15,
                child: Text(
                  description,
                  style: TextStyle(
                    height: 1.6,
                      color: kWhiteColor.withOpacity(.6),
                      fontSize: 17,
                      fontFamily: kRoboto,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Positioned(
                  left: 124,
                  top: 365,
                  child: Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: kBlackColor.withOpacity(.2),
                          blurRadius: 20,
                          spreadRadius: 3)
                    ]),
                    child: CustomButton(
                      onTap: onTap,
                      borderRadius: 18,
                      text: buttonText,
                      fontweight: FontWeight.w500,
                      size: 19,
                      width: 151,
                      height: 46,
                      color: kSecondaryColor,
                      textColor: kWhiteColor,
                      borderColor: kSecondaryColor,
                    ),
                  )),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Image.asset(
            screenImage,
            height: 320,
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
