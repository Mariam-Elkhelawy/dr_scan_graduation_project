import 'package:dr_scan_graduation_project/constants.dart';
import 'package:dr_scan_graduation_project/pages/password_changed.dart';
import 'package:dr_scan_graduation_project/widgets/custom_button.dart';
import 'package:dr_scan_graduation_project/widgets/custom_text_formfield.dart';
import 'package:flutter/material.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);
  static String id = 'ResetPasswordPage';


  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: kWhiteColor,
    body: Stack(children: [
      Image.asset('assets/images/Union.png'),

      ListView(
        children: [
          SizedBox(
            height: 105,
          ),
          Center(child: Image.asset('assets/images/reset_password.png')),
          SizedBox(
            height: 22,
          ),
          Center(
            child: Text(
              'Reset Your Password',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: kRoboto),
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Center(
            child: Text(
              """       Use at least 8 characters,
including both numbers and letters """
              ,style: TextStyle(
                  fontSize: 16,
                  color: kBlackColor.withOpacity(.7),
                  fontWeight: FontWeight.w400,
                  fontFamily: kRoboto),
            ),
          ),
          SizedBox(height: 32,),
          CustomTextFormField(
            padding: 265,
            hintText: 'must be 8 characters',
            suffixIcon: Icon(
              Icons.visibility_off_outlined,
              color: kBlackColor.withOpacity(.6),
              size: 24,
            ),
            abovetext: 'New password',
            width: 350,
          ),
          SizedBox(
            height: 30,
          ),
          CustomTextFormField(
            padding: 207,
            hintText: 'Enter password again',
            suffixIcon: Icon(
              Icons.visibility_off_outlined,
              color: kBlackColor.withOpacity(.6),
              size: 24,
            ),
            abovetext: 'Confirm new Password',
            width: 350,
          ),
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 38),
            child: GestureDetector( onTap: (){Navigator.pushNamed(context, PasswordChangedPage.id);},
              child: CustomButton(
                text: 'Done',
                size: 16,
                width: 310,
                height: 47,
                color: kPrimaryColor,
                borderRadius: 10,
                textColor: kWhiteColor,
                borderColor: kPrimaryColor,
                fontweight: FontWeight.w600,
              ),
            ),
          ),
        ],
      )
    ],),);
  }
}
