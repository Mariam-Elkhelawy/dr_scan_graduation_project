import 'package:dr_scan_graduation_project/constants.dart';
import 'package:dr_scan_graduation_project/pages/description_pages.dart';
import 'package:dr_scan_graduation_project/widgets/custom_button.dart';
import 'package:flutter/material.dart';


class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Column(
        children: [
          SizedBox(
            height: 95,
          ),
          Text(
            'About',
            style: TextStyle(
                fontFamily: kRoboto, fontSize: 24, color: Color(0xff525252)),
          ),
          SizedBox(height: 5,),
          Text(
            'Dr.Scan',
            style: TextStyle(
                fontFamily: 'Lora', fontSize: 32, color: Color(0xff222222)),
          ),
          SizedBox(
            height: 20,
          ), Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Center(
              child: Text(
                'DR.Scan app provide medical diagnosis and understanding medical tests. Dr.Scan services can always be used. By using our services you can save money and effort.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 17,
                    color: Color(0xff434242),
                    fontFamily: kRoboto,
                    height: 1.7),
              ),
            ),
          ),
          SizedBox(
            height: 62,
          ),
          Image.asset('assets/images/aboutus_description.gif', width: 350,),
          SizedBox(height: 13,),
          CustomButton(
            borderRadius: 8,
            color: kPrimaryColor,
            width: 320,
            height: 40,
            onTap:() {
              Navigator.pushNamed(context, DescriptionPages.id);
            },
            text: 'Get started !',
            size: 18, textColor: kWhiteColor,borderColor: kPrimaryColor,
          )
        ],
      ),
    );
  }
}