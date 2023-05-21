import 'package:dr_scan_graduation_project/constants.dart';
import 'package:dr_scan_graduation_project/pages/loading_page.dart';
import 'package:dr_scan_graduation_project/widgets/custom_button.dart';
import 'package:dr_scan_graduation_project/widgets/nav_bar.dart';
import 'package:dr_scan_graduation_project/widgets/progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class QuestionsPage extends StatefulWidget {
  const QuestionsPage({Key? key}) : super(key: key);
  static String id ='QuestionsPage';

  @override
  State<QuestionsPage> createState() => _QuestionsPageState();
}

class _QuestionsPageState extends State<QuestionsPage> {

  final controller = PageController(viewportFraction: 0.9, keepPage: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(height: 90,),
        Text(
          'Diagnosis',
          style: TextStyle(
              fontSize: 24,
              fontFamily: kRoboto,
              fontWeight: FontWeight.w700),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 22, left: 42, bottom: 22),
          child: ProgressBar(
              ticks: 3,
              first1: true,
              second1: false,
              first2: true,
              second2: false,
              first3: false,
              second3: false),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Text(
            """Please answer these Questions to            
                get accurate info ..""",
            style: TextStyle(
                color: Color(0xff818181),
                fontSize: 15,
                fontFamily: kRoboto,
                fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(
          height: 11,
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 16),
              SizedBox(
                height: 370,
                width: 366,
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
                            height: 31,
                          ),
                          Center(
                            child: Text(
                              """ Do you have this pain 
           everyday ?""",
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
                          CustomButton(
                            text: 'Yes',
                            size: 16,
                            width: 269,
                            height: 47,
                            color: kPrimaryColor,
                            borderRadius: 16,
                            fontweight: FontWeight.w400,
                            textColor: kWhiteColor,
                            borderColor: kPrimaryColor,
                          ),
                          SizedBox(height: 18,),
                          CustomButton(
                            text: 'No',
                            size: 16,
                            width: 269,

                            height: 47,
                            color: kPrimaryColor,
                            borderRadius: 16,
                            fontweight: FontWeight.w400,
                            textColor: kWhiteColor,
                            borderColor: kPrimaryColor,
                          ),
                          SizedBox(height: 18,),
                          CustomButton(
                            text: 'Don’t Know',
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
                            color: kBlackColor.withOpacity(.1),
                            blurRadius: 15,
                            spreadRadius: 3,
                            offset: Offset(0, 0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(16),
                        color: kWhiteColor,
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
                            '1/3',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              fontFamily: kRoboto,
                              color: Color(0xff818181),
                            ),
                          ),
                          SizedBox(
                            height: 31,
                          ),
                          Center(
                            child: Text(
                              """Are you pregnant ?""",
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
                          CustomButton(
                            text: 'Yes',
                            size: 16,
                            width: 269,
                            height: 47,
                            color: kPrimaryColor,
                            borderRadius: 16,
                            fontweight: FontWeight.w400,
                            textColor: kWhiteColor,
                            borderColor: kPrimaryColor,
                          ),
                          SizedBox(height: 18,),
                          CustomButton(
                            text: 'No',
                            size: 16,
                            width: 269,
                            height: 47,
                            color: kPrimaryColor,
                            borderRadius: 16,
                            fontweight: FontWeight.w400,
                            textColor: kWhiteColor,
                            borderColor: kPrimaryColor,
                          ),
                          SizedBox(height: 18,),
                          CustomButton(
                            text: 'Don’t Know',
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
                        color: kWhiteColor,
                      ),
                      margin: EdgeInsets.only(left: 14, right: 14),
                    ),

                  ],
                  clipBehavior: Clip.none,
                  controller: controller,
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, previousPage());
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 40 , top: 35),
                child: Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.angleLeft,
                      color: kPrimaryColor,
                      size: 20,
                    ),
                    SizedBox(width: 5,),
                    Text(
                      'Back',
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 16,
                          fontFamily: kRoboto,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 32, left: 119),
              child: CustomButton(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        context = context;
                        return  LoadingPage();
                      },
                    );                  },
                  text: 'Next',
                  size: 16,
                  width: 124,
                  height: 47,
                  color: kPrimaryColor,
                  borderRadius: 12,
                  textColor: kWhiteColor,
                  borderColor: kPrimaryColor),
            ),
          ],
        ),

      ],),
      bottomNavigationBar: NavBar(istabbed2: true,istabbed: false,istabbed3: false,istabbed1: false,),

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