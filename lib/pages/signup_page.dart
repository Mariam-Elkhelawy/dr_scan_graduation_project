import 'package:dr_scan_graduation_project/constants.dart';
import 'package:dr_scan_graduation_project/pages/home_page.dart';
import 'package:dr_scan_graduation_project/pages/login_page.dart';
import 'package:dr_scan_graduation_project/widgets/custom_button.dart';
import 'package:dr_scan_graduation_project/widgets/custom_text_field.dart';
import 'package:dr_scan_graduation_project/widgets/custom_text_formfield.dart';
import 'package:dr_scan_graduation_project/widgets/customicon_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:text_divider/text_divider.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);
  static String id = 'SignupPage';

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool isSign = false;
  bool female = false;
  bool male = false;
  bool smoke = false;
  bool notsmoke = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(100, 110),
        child: SafeArea(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 36,
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    FontAwesomeIcons.arrowLeft,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
              ),
              SizedBox(
                width: 18,
              ),
              Container(
                height: 120,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.only(top: 60),
                  child: Text(
                    'Create account',
                    style: TextStyle(
                        fontFamily: kRoboto,
                        fontWeight: FontWeight.bold,
                        fontSize: 28),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          SizedBox(
            height: 25,
          ),
          CustomTextFormField(
            color: kWhiteColor,
            padding: 270,
            suffixIcon: FaIcon(
              FontAwesomeIcons.userPen,
              color: kPrimaryColor,
              size: 22,
            ),
            abovetext: 'User Name',
            width: 350,
            hintText: 'ex. DR.Scan user',
          ),
          SizedBox(
            height: 30,
          ),
          CustomTextFormField(
            color: kWhiteColor,
            padding: 253,
            suffixIcon: Icon(
              Icons.email_outlined,
              color: kPrimaryColor,
              size: 26,
            ),
            abovetext: 'Email address',
            width: 350,
            hintText: 'Your email',
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 21),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomTextField(
                  abovetext: 'Country code',
                  hintText: '+20',
                  width: 122,
                  padding: 21,
                ),
                SizedBox(
                  width: 11,
                ),
                CustomTextField(
                  padding: 106,
                  abovetext: 'Mobile number',
                  hintText: '1094078360',
                  width: 217,
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          CustomTextFormField(
            color: kWhiteColor,
            padding: 278,
            hintText: 'Enter password',
            suffixIcon: Icon(
              Icons.visibility_off_outlined,
              color: kPrimaryColor,
              size: 24,
            ),
            abovetext: 'Password',
            width: 350,
          ),
          SizedBox(
            height: 30,
          ),
          CustomTextFormField(
            color: kWhiteColor,
            padding: 221,
            hintText: 'Enter password again',
            suffixIcon: Icon(
              Icons.visibility_off_outlined,
              color: kPrimaryColor,
              size: 24,
            ),
            abovetext: 'Confirm Password',
            width: 350,
          ),
          SizedBox(
            height: 30,
          ),
          CustomTextFormField(
            color: kWhiteColor,
            suffixIcon: Icon(
              FontAwesomeIcons.calendarDays,
              color: kPrimaryColor,
              size: 24,
            ),
            abovetext: 'Age',
            width: 350,
            padding: 308,
            hintText: 'dd/mm/yy',
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 27),
            child: Text(
              'Gender',
              style: TextStyle(
                  fontFamily: kRoboto,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35),
            child: Row(
              children: [
                CustomButton( onTap:(){ setState(() {
                  female = true;
                  male = false;
                });},
                  text: 'Female',
                  size: 14,
                  width: 148,
                  height: 40,
                  color: kWhiteColor,
                  borderRadius: 8,
                  textColor:female? kPrimaryColor: kBlackColor.withOpacity(.6),
                  borderColor: female? kPrimaryColor: Color(0xff768384),
                  fontweight: female? FontWeight.w600: FontWeight.w400,
                ),
                SizedBox(
                  width: 24,
                ),
                CustomButton( onTap: (){setState(() {
                  male = true;
                  female = false;
                });},
                  text: 'Male',
                  size: 14,
                  width: 148,
                  height: 40,
                  color: Colors.white,
                  borderRadius: 8,
                  textColor:male? kPrimaryColor: kBlackColor.withOpacity(.6),
                  borderColor: male? kPrimaryColor: Color(0xff768384),
                  fontweight: male? FontWeight.w600: FontWeight.w400,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 27),
            child: Text(
              'Do you smoke cigarette?',
              style: TextStyle(
                  fontFamily: kRoboto,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35),
            child: Row(
              children: [
                CustomButton( onTap: (){setState(() {
                  smoke = true;
                  notsmoke = false;
                });},
                  text: 'Yes',
                  size: 14,
                  width: 148,
                  height: 40,
                  color: kWhiteColor,
                  borderRadius: 8,
                  textColor:smoke? kPrimaryColor: kBlackColor.withOpacity(.6),
                  borderColor: smoke? kPrimaryColor: Color(0xff768384),
                  fontweight: smoke? FontWeight.w600: FontWeight.w400,
                ),
                SizedBox(
                  width: 24,
                ),
                CustomButton( onTap: (){setState(() {
                  smoke = false;
                  notsmoke = true;
                });},
                  text: 'No',
                  size: 14,
                  width: 148,
                  height: 40,
                  color: Colors.white,
                  borderRadius: 8,
                  textColor:notsmoke? kPrimaryColor: kBlackColor.withOpacity(.6),
                  borderColor: notsmoke? kPrimaryColor: Color(0xff768384),
                  fontweight: notsmoke? FontWeight.w600: FontWeight.w400,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          CustomTextField(
              abovetext: 'Do you suffer from any disease ?',
              hintText: 'ex. I suffer from diabetes ...',
              width: 350,
              padding: 125),
          SizedBox(
            height: 40,
          ),
          Center(
            child: CustomButton(
              onTap: () { setState(() {
                isSign = true;
              });
              Navigator.pushNamed(context, HomePage.id);
              },
              text: 'Sign-Up',
              size: 20,
              width: 295,
              height: 45,
              color: isSign?Color(0xff027189) : kPrimaryColor,
              borderRadius: 8,
              fontweight: FontWeight.w500,
              textColor: kWhiteColor,
              borderColor:isSign? Color(0xff027189) : kPrimaryColor,
            ),
          ),
          SizedBox(
            height: 28,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 17, right: 23),
            child: TextDivider.horizontal(
                text: Text(
                  '  OR',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                    fontFamily: kRoboto,
                  ),
                ),
                thickness: 1,
                color: Color(0xff565656),
                indent: 8,
                endIndent: 8),
          ),
          SizedBox(
            height: 25,
          ),
          CustomIconText(
              icon: Logo(
                Logos.google,
                size: 24,
              ),
              iconText: 'Sign up with Google'),
          SizedBox(
            height: 20,
          ),
          CustomIconText(
              icon: Icon(
                Icons.facebook,
                color: Color(0xff1778F2),
                size: 30,
              ),
              iconText: 'Sign up with Facebook'),
          Padding(
            padding: const EdgeInsets.only(
              left: 85,
              right: 60,
              top: 31,
              bottom: 25,
            ),
            child: Row(
              children: [
                Text(
                  'Already have an account? ',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      fontFamily: kRoboto,
                      color: Color(0xff474747)),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, LoginPage.id);
                  },
                  child: Text(
                    'Log-in',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      fontFamily: kRoboto,
                      color: Color(0xff474747),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
