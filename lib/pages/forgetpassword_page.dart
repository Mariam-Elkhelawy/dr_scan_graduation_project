import 'package:dr_scan_graduation_project/constants.dart';
import 'package:dr_scan_graduation_project/pages/sendEmail_page.dart';
import 'package:dr_scan_graduation_project/pages/sendMessage_page.dart';
import 'package:dr_scan_graduation_project/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPasswordPage extends StatelessWidget {
  ForgetPasswordPage({Key? key}) : super(key: key);
  static String id = 'ForgetPasswordPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Stack(
        children: [
          Positioned(child: Image.asset('assets/images/Union.png')),

          Column(
          children: [
SizedBox(height: 125.h,),
            Center(child: Image.asset('assets/images/forget_password.png')),
            SizedBox(
              height: 22,
            ),
            Center(
              child: Text(
                'Forget Password ?',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Center(
              child: Text(
                """Please choose way from those options 
             to reset your password """,
                style: TextStyle( height: 1.25,
                    fontSize: 15, color: kBlackColor.withOpacity(.7), fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 66,
            ),
            Center(
              child: GestureDetector(
                onTap: (){Navigator.pushNamed(context,SendEmailPage.id);},
                child: CustomButton(
                    text: 'Send an email',
                    size: 18,
                    width: 310,
                    height: 45,
                    color: kPrimaryColor,
                    borderRadius: 8,
                    textColor: kWhiteColor,
                    borderColor: kPrimaryColor,
                fontweight: FontWeight.w500,),
              ),
            ),
            SizedBox(height: 55,),
            Center(
              child: GestureDetector(
                onTap: (){Navigator.pushNamed(context,SendMessagePage.id);},

                child: CustomButton(
                  text: 'Send a message',
                  size: 18,
                  width: 310,
                  height: 45,
                  color: kPrimaryColor,
                  borderRadius: 8,
                  textColor: kWhiteColor,
                  borderColor: kPrimaryColor,
                  fontweight: FontWeight.w500,),
              ),
            ),
            SizedBox(height: 110.h,),
            Padding(
              padding: const EdgeInsets.only(left: 90),
              child: Row(
                children: [
                  Text(
                    'Remember password? ',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        fontFamily: kRoboto,
                        color: kBlackColor.withOpacity(.7)),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Log in',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        fontFamily: kRoboto,
                        color: kBlackColor.withOpacity(.7),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  )
                ],
              ),
            )

          ],
        ),]
      ),
    );
  }
}
