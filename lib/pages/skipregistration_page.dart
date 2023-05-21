import 'package:dr_scan_graduation_project/constants.dart';
import 'package:dr_scan_graduation_project/pages/home_page.dart';
import 'package:dr_scan_graduation_project/widgets/custom_button.dart';
import 'package:dr_scan_graduation_project/widgets/customicom_symptom.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SkipRegistrationPage extends StatefulWidget {
  SkipRegistrationPage({Key? key}) : super(key: key);
  static String id = 'SkipRegistrationPage';

  @override
  State<SkipRegistrationPage> createState() => _SkipRegistrationPageState();
}

class _SkipRegistrationPageState extends State<SkipRegistrationPage> {
  final controller = PageController(viewportFraction: 0.9, keepPage: true);
  int _currentHorizontalIntValue = 5;
  bool male = false;
  bool female = false;
  bool yes = false;
  bool no = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      body: Column(
        children: [
          SizedBox(
            height: 89,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 41, right: 32),
            child: Text(
              'Please answer these Questions to get accurate info ..',
              style: TextStyle(
                  color: Color(0xff818181),
                  fontSize: 18,
                  fontFamily: kRoboto,
                  fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 94,
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 16),
                SizedBox(
                  height: 410,
                  width: 362,
                  child: PageView(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 29,
                            ),
                            Text(
                              '1/3',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                fontFamily: kRoboto,
                                color: Color(0xff818181),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Center(
                              child: Text(
                                'How old are you ?',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: kRoboto,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            NumberPicker(
                              itemCount: 5,
                              itemWidth: 65,
                              selectedTextStyle: TextStyle(
                                  fontSize: 50,
                                  fontFamily: 'Abril Fatface',
                                  fontWeight: FontWeight.w500),
                              textStyle: TextStyle(
                                fontSize: 30,
                                fontFamily: 'Abril Fatface',
                                fontWeight: FontWeight.w500,
                                color: Color(0xff575757),
                              ),
                              value: _currentHorizontalIntValue,
                              minValue: 0,
                              maxValue: 90,
                              step: 1,
                              itemHeight: 100,
                              axis: Axis.horizontal,
                              onChanged: (value) => setState(
                                  () => _currentHorizontalIntValue = value),
                            ),
                            SizedBox(
                              height: 80,
                            ),
                            CustomButton(
                              onTap: () {
                                Navigator.pushNamed(context, nextPage());
                              },
                              text: 'Next',
                              size: 16,
                              width: 269,
                              height: 47,
                              color: kPrimaryColor,
                              borderRadius: 16,
                              fontweight: FontWeight.w400,
                              textColor: kWhiteColor,
                              borderColor: kPrimaryColor,
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(.1),
                              blurRadius: 15,
                              spreadRadius: 3,
                              offset: Offset(0, 0),
                            )
                          ],
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white,
                        ),
                        margin: EdgeInsets.only(left: 14, right: 14),
                      ),
                      Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 29,
                            ),
                            Text(
                              '2/3',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                fontFamily: kRoboto,
                                color: Color(0xff818181),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Text(
                              'What’s your gender ?',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: kRoboto,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 55,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 22),
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        female = true;
                                        male = false;
                                      });
                                    },
                                    child: Container(
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 25,
                                          ),
                                          Image.asset(
                                              'assets/images/woman.png'),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            'Female',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontFamily: kRoboto,
                                                fontSize: 15),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                        ],
                                      ),
                                      width: 108,
                                      height: 120,
                                      decoration: BoxDecoration(
                                        boxShadow: female
                                            ? [
                                                BoxShadow(
                                                    offset: Offset(0, 1),
                                                    blurRadius: 11,
                                                    spreadRadius: 5,
                                                    color: Color(0xff0E5C6D)
                                                        .withOpacity(.15))
                                              ]
                                            : null,
                                        color: Color(0xffF0F0F0),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(11),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 32,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        female = false;
                                        male = true;
                                      });
                                    },
                                    child: Container(
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 25,
                                          ),
                                          Image.asset('assets/images/man.png'),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            'Male',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontFamily: kRoboto,
                                                fontSize: 15),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          )
                                        ],
                                      ),
                                      width: 108,
                                      height: 120,
                                      decoration: BoxDecoration(
                                        boxShadow: male
                                            ? [
                                                BoxShadow(
                                                    offset: Offset(0, 1),
                                                    blurRadius: 11,
                                                    spreadRadius: 5,
                                                    color: Color(0xff0E5C6D)
                                                        .withOpacity(.15))
                                              ]
                                            : null,
                                        color: Color(0xffF0F0F0),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(11),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 54,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 23.5, right: 15),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, previousPage());
                                },
                                child: Row(
                                  children: [
                                    Icon(
                                      FontAwesomeIcons.angleLeft,
                                      color: kPrimaryColor,
                                      size: 20,
                                    ),
                                    Text(
                                      'Back',
                                      style: TextStyle(
                                          color: kPrimaryColor,
                                          fontSize: 16,
                                          fontFamily: kRoboto,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      width: 75,
                                    ),
                                    CustomButton(
                                        onTap: () {
                                          male || female
                                              ? Navigator.pushNamed(
                                                  context, nextPage())
                                              : null;
                                        },
                                        text: 'Next',
                                        size: 16,
                                        width: 124,
                                        height: 47,
                                        color: kPrimaryColor,
                                        borderRadius: 12,
                                        textColor: kWhiteColor,
                                        borderColor: kPrimaryColor),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(.1),
                              blurRadius: 15,
                              spreadRadius: 3,
                              offset: Offset(0, 0),
                            )
                          ],
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white,
                        ),
                        margin: EdgeInsets.only(left: 14, right: 14),
                      ),
                      Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 29,
                            ),
                            Text(
                              '3/3',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                fontFamily: kRoboto,
                                color: Color(0xff818181),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Text(
                              'Do you smoke cigarettes ? ',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: kRoboto,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 68,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    yes = true;
                                    no = false;
                                  });
                                },
                                child: CustomIconSymptom(
                                    spreadRadius: yes ? 5 : 1,
                                    blurRadius: yes ? 17 : 3,
                                    shadowColor: yes
                                        ? Color(0xff3D5B59).withOpacity(.25)
                                        : kBlackColor.withOpacity(.06),
                                    offset: yes ? Offset(0, 3) : Offset(0, 0),
                                    fontWeight: FontWeight.w500,
                                    iconsize: 24,
                                    iconcolor: Color(0xff3D5B59),
                                    icon: Icon(FontAwesomeIcons.check),
                                    iconText: 'Yes',
                                    width: 253,
                                    height: 38,
                                    radius: 8,
                                    textcolor: Color(0xff3D5B59),
                                    borderColor: Color(0xff3D5B59)),
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    no = true;
                                    yes = false;
                                  });
                                },
                                child: CustomIconSymptom(
                                    spreadRadius: no ? 5 : 1,
                                    blurRadius: no ? 17 : 3,
                                    shadowColor: no
                                        ? Color(0xff3D5B59).withOpacity(.25)
                                        : kBlackColor.withOpacity(.06),
                                    offset: no ? Offset(0, 3) : Offset(0, 0),
                                    iconcolor: Color(0xff3D5B59),
                                    fontWeight: FontWeight.w500,
                                    icon: Icon(
                                      FontAwesomeIcons.xmark,
                                    ),
                                    iconsize: 24,
                                    iconText: 'No',
                                    width: 253,
                                    height: 38,
                                    radius: 8,
                                    textcolor: Color(0xff3D5B59),
                                    borderColor: Color(0xff3D5B59)),
                              ),
                            ),
                            SizedBox(
                              height: 60,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 23.5, right: 15),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, previousPage());
                                },
                                child: Row(
                                  children: [
                                    Icon(
                                      FontAwesomeIcons.angleLeft,
                                      color: kPrimaryColor,
                                      size: 20,
                                    ),
                                    Text(
                                      'Back',
                                      style: TextStyle(
                                          color: kPrimaryColor,
                                          fontSize: 16,
                                          fontFamily: kRoboto,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      width: 75,
                                    ),
                                    CustomButton(
                                        onTap: () {
                                          yes || no
                                              ? Navigator.pushNamed(
                                                  context, HomePage.id)
                                              : null;
                                        },
                                        text: 'Done',
                                        size: 16,
                                        width: 124,
                                        height: 47,
                                        color: kPrimaryColor,
                                        borderRadius: 12,
                                        textColor: kWhiteColor,
                                        borderColor: kPrimaryColor),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(.1),
                              blurRadius: 15,
                              spreadRadius: 3,
                              offset: Offset(0, 0),
                            )
                          ],
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white,
                        ),
                        margin: EdgeInsets.only(left: 14, right: 14),
                      ),
                    ],
                    clipBehavior: Clip.none,
                    controller: controller,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 80, left: 15, right: 15),
                  child: SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                    effect: ScrollingDotsEffect(
                      activeDotColor: kPrimaryColor,
                      spacing: 20,
                      dotHeight: 5,
                      dotWidth: 95,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  nextPage() {
    controller.animateToPage(controller.page!.toInt() + 1,
        duration: Duration(milliseconds: 400), curve: Curves.easeIn);
  }

  previousPage() {
    controller.animateToPage(controller.page!.toInt() - 1,
        duration: Duration(milliseconds: 400), curve: Curves.easeIn);
  }
}
