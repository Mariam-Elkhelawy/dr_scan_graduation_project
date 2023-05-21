import 'package:dr_scan_graduation_project/constants.dart';
import 'package:dr_scan_graduation_project/pages/questions_page.dart';
import 'package:dr_scan_graduation_project/widgets/custom_button.dart';
import 'package:dr_scan_graduation_project/widgets/customicom_symptom.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SymptomPage extends StatefulWidget {
  SymptomPage();
  static String id = 'SymptomPage';

  @override
  State<SymptomPage> createState() => _SymptomPageState();
}

class _SymptomPageState extends State<SymptomPage> {
  // bool? isChecked= false;
  //
  // Widget tick() {
  //   return isChecked!
  //       ? Icon(
  //     FontAwesomeIcons.circle,
  //     color: kPrimaryColor,
  //     size: 20,
  //   )
  //       : Icon(
  //     FontAwesomeIcons.solidCircleCheck,
  //     color: kPrimaryColor,
  //     size: 18,
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Stack(
        children: [
          Positioned(
              left: 228,
              top: 114,
              child: Image.asset(
                'assets/images/background_body.png',
                width: 320,
                opacity: AlwaysStoppedAnimation(0.5),
              )),
          Column(
            children: [
              SizedBox(
                height: 80,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      FontAwesomeIcons.arrowLeft,
                      color: Color(0xff3A3A3A),
                      size: 18,
                    ),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    'Head Symptom',
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: kRoboto,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50),
                child: Text(
                  """choose the part of that you feel 
pain on it """,
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xff727272),
                    fontFamily: kRoboto,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 45, top: 28),
                child: CustomIconSymptom(spreadRadius: 0,
                  shadowColor: kBlackColor.withOpacity(.25),
                  blurRadius: 13,
                  offset: Offset(0, 1),
                  icon: Icon(FontAwesomeIcons.circle),
                  iconText: 'Sclap',
                  width: 300,
                  height: 44,
                  radius: 13,
                  textcolor: kBlackColor,
                  borderColor: kPrimaryColor,
                  fontWeight: FontWeight.w600,
                  iconcolor: kBlackColor,
                  iconsize: 21,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 45, top: 24),
                child: CustomIconSymptom(spreadRadius: 0,
                    shadowColor: kBlackColor.withOpacity(.25),
                    offset: Offset(0, 1),
                    blurRadius: 13,
                    icon: Icon(FontAwesomeIcons.circle),
                    iconText: 'Forehead',
                    width: 300,
                    height: 44,
                    radius: 13,
                    textcolor: kBlackColor,
                    borderColor: kPrimaryColor,
                    fontWeight: FontWeight.w600,
                    iconcolor: kBlackColor,
                    iconsize: 21,
                    onTap: () {}),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 45, top: 24),
                child: CustomIconSymptom(spreadRadius: 0,
                  shadowColor: kBlackColor.withOpacity(.25),
                  offset: Offset(0, 1),
                  blurRadius: 13,
                  icon: Icon(FontAwesomeIcons.circle),
                  iconText: 'Eyes',
                  width: 300,
                  height: 44,
                  radius: 13,
                  textcolor: kBlackColor,
                  borderColor: kPrimaryColor,
                  fontWeight: FontWeight.w600,
                  iconcolor: kBlackColor,
                  iconsize: 21,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 45, top: 24),
                child: CustomIconSymptom(spreadRadius: 0,
                  shadowColor: kBlackColor.withOpacity(.25),
                  offset: Offset(0, 1),
                  blurRadius: 13,
                  icon: Icon(FontAwesomeIcons.circle),
                  iconText: 'Nose',
                  width: 300,
                  height: 44,
                  radius: 13,
                  textcolor: kBlackColor,
                  borderColor: kPrimaryColor,
                  fontWeight: FontWeight.w600,
                  iconcolor: kBlackColor,
                  iconsize: 21,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 45, top: 24),
                child: CustomIconSymptom( spreadRadius: 0,
                  shadowColor: kBlackColor.withOpacity(.25),
                  offset: Offset(0, 1),
                  blurRadius: 13,
                  icon: Icon(FontAwesomeIcons.circle),
                  iconText: 'Ears',
                  width: 300,
                  height: 44,
                  radius: 13,
                  textcolor: kBlackColor,
                  borderColor: kPrimaryColor,
                  fontWeight: FontWeight.w600,
                  iconcolor: kBlackColor,
                  iconsize: 21,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 45, top: 24),
                child: CustomIconSymptom( spreadRadius: 0,
                  shadowColor: kBlackColor.withOpacity(.25),
                  offset: Offset(0, 1),
                  blurRadius: 13,
                  icon: Icon(FontAwesomeIcons.circle),
                  iconText: 'Face',
                  width: 300,
                  height: 44,
                  radius: 13,
                  textcolor: kBlackColor,
                  borderColor: kPrimaryColor,
                  fontWeight: FontWeight.w600,
                  iconcolor: kBlackColor,
                  iconsize: 21,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 45, top: 24),
                child: CustomIconSymptom( spreadRadius: 0,
                  shadowColor: kBlackColor.withOpacity(.25),
                  offset: Offset(0, 1),                  blurRadius: 13,

                  icon: Icon(FontAwesomeIcons.circle),
                  iconText: 'Mouth',
                  width: 300,
                  height: 44,
                  radius: 13,
                  textcolor: kBlackColor,
                  borderColor: kPrimaryColor,
                  fontWeight: FontWeight.w600,
                  iconcolor: kBlackColor,
                  iconsize: 21,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 45, top: 24),
                child: CustomIconSymptom( spreadRadius: 0,
                  shadowColor: kBlackColor.withOpacity(.25),
                  offset: Offset(0, 1),                  blurRadius: 13,

                  icon: Icon(FontAwesomeIcons.circle),
                  iconText: 'Jaw',
                  width: 300,
                  height: 44,
                  radius: 13,
                  textcolor: kBlackColor,
                  borderColor: kPrimaryColor,
                  fontWeight: FontWeight.w600,
                  iconcolor: kBlackColor,
                  iconsize: 21,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, QuestionsPage.id);
                },
                child: CustomButton(
                  text: 'Next',
                  size: 16,
                  width: 310,
                  height: 47,
                  color: kPrimaryColor,
                  borderRadius: 10,
                  textColor: kWhiteColor,
                  borderColor: kPrimaryColor,
                  fontweight: FontWeight.w600,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
