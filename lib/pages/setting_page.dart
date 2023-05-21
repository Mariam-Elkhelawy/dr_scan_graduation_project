import 'package:dr_scan_graduation_project/constants.dart';
import 'package:dr_scan_graduation_project/pages/accountinfo_page.dart';
import 'package:dr_scan_graduation_project/pages/privacy_page.dart';
import 'package:dr_scan_graduation_project/widgets/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);
  static String id = 'SettingPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      body: Column(
        children: [
          SizedBox(
            height: 61,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              'Setting',
              style: TextStyle(
                fontSize: 24,
                color: kBlackColor,
                fontFamily: kRoboto,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Image.asset(
            'assets/images/setting_main.png',
            width: 165,
            height: 165,
          ),
          SizedBox(
            height: 2,
          ),
          ButtonSetting(
            onTap: (){
              Navigator.pushNamed(context, AccountInfoPage.id);
            },
            icon: Icon(FontAwesomeIcons.user),
            sizeIcon: 27,
            text: 'Account info',
            hintText: 'name, age, gender, ...etc',
            width1: 10,
            width2: 0,
            width3: 90,
            toptext: 13,
            righttext: 70,
            tophint: 4,
            righthint: 4,
          ),
          SizedBox(
            height: 12,
          ),
          ButtonSetting(
            onTap: (){
              Navigator.pushNamed(context, PrivacyPage.id);
            },
            icon: Icon(Icons.privacy_tip_outlined),
            sizeIcon: 27,
            text: 'Privacy',
            hintText: 'password, mobile number',
            width1: 10,
            width2: 0,
            width3: 77,
            toptext: 13,
            righttext: 122,
            tophint: 4,
            righthint: 0,
          ),
          SizedBox(
            height: 12,
          ),
          ButtonSetting(
            onTap: (){},
            icon: Icon(FontAwesomeIcons.paypal),
            sizeIcon: 27,
            text: 'Payment options',
            hintText: 'credit card',
            width1: 10,
            width2: 0,
            width3: 52,
            toptext: 13,
            righttext: 70,
            tophint: 4,
            righthint: 132,
          ),
          SizedBox(
            height: 12,
          ),
          Button2Setting(
              icon: Icon(Icons.info_outline),
              sizeIcon: 28,
              text: 'About us',
              width1: 10,
              width2: 0,
              width3: 115.5,
              toptext: 0,
              righttext: 70),
          SizedBox(
            height: 12,
          ),
          Button2Setting(
              icon: Icon(Icons.star_border_outlined),
              sizeIcon: 28,
              text: 'Rate us',
              width1: 10,
              width2: 0,
              width3: 125.5,
              toptext: 0,
              righttext: 70),
          SizedBox(
            height: 12,
          ),
          Button2Setting(
              icon: Icon(Icons.logout_outlined),
              sizeIcon: 28,
              text: 'Logout',
              width1: 10,
              width2: 0,
              width3: 128.5,
              toptext: 0,
              righttext: 70),

          NavBar(istabbed: true,istabbed2: false,istabbed1: false,istabbed3: false,),
        ],
      ),
    );
  }
}
class ButtonSetting extends StatelessWidget {
  ButtonSetting({
    required this.icon,
    required this.sizeIcon,
    required this.text,
    this.hintText,
    required this.width1,
    required this.width2,
    required this.width3,
    required this.toptext,
    required this.righttext,
    this.tophint,
    this.righthint,
    required this.onTap
  });
  Widget icon;
  double sizeIcon;
  double width1;
  double width2;
  double width3;
  String text;
  var hintText;
  double toptext;
  double righttext;
  double? tophint;
  double? righthint;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Container(
        width: 360,
        height: 70,
        decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              alignment: Alignment.topLeft,
              image: AssetImage(
                'assets/images/Line_bold.png',
              ),
            )),
        child: Row(
          children: [
            SizedBox(
              width: width1,
            ),
            IconButton(
              onPressed: () {},
              icon: icon,
              iconSize: sizeIcon,
              color: kPrimaryColor,
            ),
            SizedBox(
              width: width2,
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: toptext,
                    right: righttext,
                  ),
                  child: Text(
                    text,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: kRoboto,
                        fontSize: 18,
                        color: kBlackColor),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: righthint!, top: tophint!),
                  child: Text(
                    hintText,
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: kRoboto,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff292826).withOpacity(.8)),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: width3,
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: kPrimaryColor,
              size: 12,
            ),
          ],
        ),
      ),
    );
  }
}

class Button2Setting extends StatelessWidget {
  Button2Setting({
    required this.icon,
    required this.sizeIcon,
    required this.text,
    required this.width1,
    required this.width2,
    required this.width3,
    required this.toptext,
    required this.righttext,
  });
  Widget icon;
  double sizeIcon;
  double width1;
  double width2;
  double width3;
  String text;
  double toptext;
  double righttext;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 59,
      decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            alignment: Alignment.topLeft,
            image: AssetImage(
              'assets/images/Line_bold.png',
            ),
          )),
      child: Row(
        children: [
          SizedBox(
            width: width1,
          ),
          IconButton(
            onPressed: () {},
            icon: icon,
            iconSize: sizeIcon,
            color: kPrimaryColor,
          ),
          SizedBox(
            width: width2,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: toptext,
              right: righttext,
            ),
            child: Text(
              text,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: kRoboto,
                  fontSize: 18,
                  color: kBlackColor),
            ),
          ),
          SizedBox(
            width: width3,
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: kPrimaryColor,
            size: 12,
          ),
        ],
      ),
    );
  }
}