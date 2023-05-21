import 'package:dr_scan_graduation_project/constants.dart';
import 'package:dr_scan_graduation_project/pages/diagnosis_result_page.dart';
import 'package:dr_scan_graduation_project/pages/test_result_page.dart';
import 'package:dr_scan_graduation_project/widgets/custom_button.dart';
import 'package:dr_scan_graduation_project/widgets/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:textfield_search/textfield_search.dart';

class SavedPage extends StatefulWidget {
  SavedPage({Key? key}) : super(key: key);
  static String id = 'SavedPage';

  @override
  State<SavedPage> createState() => _SavedPageState();
}

class _SavedPageState extends State<SavedPage> {
  bool diagnosis = true;
  bool tests = false;
  String label = "Some Label";
  List dummyList = ['Test 1', 'Test 2', 'Test 3', 'Item 4', 'Item 5'];
  TextEditingController myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Column(
        children: [
          SizedBox(
            height: 78.h,
          ),
          Text(
            'Saved',
            style: TextStyle(
                fontSize: 22.sp,
                fontFamily: kRoboto,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20.h,
          ),
          Center(
            child: Container(
              width: 340.w,
              height: 55.h,
              decoration: BoxDecoration(
                  color: Color(0xffEDEDED),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  SizedBox(
                    width: 10.w,
                  ),
                  diagnosis
                      ? CustomButton(
                          text: 'Diagnosis ',
                          size: 15.sp,
                          width: 165.w,
                          height: 40.h,
                          color: kPrimaryColor,
                          borderRadius: 15,
                          textColor: kWhiteColor,
                          borderColor: kPrimaryColor,
                          fontweight: FontWeight.w600,
                        )
                      : GestureDetector(
                          onTap: () {
                            setState(() {
                              diagnosis = true;
                              tests = false;
                            });
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 43.w),
                            child: Text(
                              'Diagnosis',
                              style: TextStyle(
                                  color: kPrimaryColor,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: kRoboto),
                            ),
                          ),
                        ),
                  SizedBox(
                    width: 35.w,
                  ),
                  tests
                      ? Padding(
                          padding: EdgeInsets.only(left: 20.w),
                          child: CustomButton(
                            text: 'Tests ',
                            size: 15.sp,
                            width: 165.w,
                            height: 40.h,
                            color: kPrimaryColor,
                            borderRadius: 15,
                            textColor: kWhiteColor,
                            borderColor: kPrimaryColor,
                            fontweight: FontWeight.w600,
                          ),
                        )
                      : GestureDetector(
                          onTap: () {
                            setState(() {
                              diagnosis = false;
                              tests = true;
                            });
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 18.w),
                            child: Text(
                              'Tests',
                              style: TextStyle(
                                  color: kPrimaryColor,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: kRoboto),
                            ),
                          ),
                        ),
                ],
              ),
            ),
          ),
          diagnosis
              ? SizedBox(
                  height: 115.h,
                )
              : SizedBox(
                  height: 30.h,
                ),
          diagnosis
              ? Column(
                  children: [
                    Image.asset(
                      'assets/images/empty.png',
                      width: 140.w,
                      height: 140.h,
                    ),
                    Text(
                      'This folder is empty',
                      style: TextStyle(
                          color: Color(0xff979797),
                          fontFamily: kRoboto,
                          fontWeight: FontWeight.w500,
                          fontSize: 17.sp),
                    ),
                  ],
                )
              : Column(
                  children: [
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(horizontal: 15),
                    //   child: TextFieldSearch(
                    //     initialList: dummyList,
                    //     label: label,
                    //     controller: myController,
                    //     decoration: InputDecoration(
                    //       hintText: 'Search',
                    //       hintStyle: TextStyle(
                    //         fontSize: 15,
                    //         fontWeight: FontWeight.w500,
                    //         fontFamily: kRoboto,
                    //         color: Color(0xff979797),
                    //       ),
                    //       filled: true,
                    //       fillColor: Color(0xffF7F7F7),
                    //       enabledBorder: OutlineInputBorder(
                    //         borderRadius: BorderRadius.circular(37),
                    //         borderSide: BorderSide(
                    //           color: Color(0xffC1C1C1).withOpacity(.28),
                    //         ),
                    //       ),
                    //       prefixIcon: Icon(Icons.search),
                    //       prefixIconColor: Color(0xff939393),
                    //       focusedBorder: OutlineInputBorder(
                    //         borderRadius: BorderRadius.circular(37),
                    //         borderSide: BorderSide(
                    //           color: Color(0xffC1C1C1).withOpacity(.28),
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    SizedBox(
                      height: 15.h,
                    ),
                    GestureDetector( onTap: (){
                      Navigator.pushNamed(context,TestResultPage.id );
                    },
                      child: Container(
                        width: 335.w,
                        height: 80.h,
                        decoration: BoxDecoration(
                          color: Color(0xffD9D9D9),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20.w,
                            ),
                            Image.asset('assets/images/saved.png'),
                            SizedBox(
                              width: 25.w,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 20.h,
                                ),
                                Text(
                                  'Test 1',
                                  style: TextStyle(
                                      color: Color(0xff373737),
                                      fontFamily: kRoboto,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  '3/10/2023',
                                  style: TextStyle(
                                      color: Color(0xff808080),
                                      fontSize: 14,
                                      fontFamily: kRoboto),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 134.w,
                            ),
                            Icon(Icons.arrow_forward_ios,
                                size: 16, color: kBlackColor)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    GestureDetector( onTap: (){Navigator.pushNamed(context, DiagnosisResultPage.id);},
                      child: Container(
                        width: 335.w,
                        height: 80.h,
                        decoration: BoxDecoration(
                          color: Color(0xffD9D9D9),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20.w,
                            ),
                            Image.asset('assets/images/saved.png'),
                            SizedBox(
                              width: 25.w,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 20.h,
                                ),
                                Text(
                                  'Test 2',
                                  style: TextStyle(
                                      color: Color(0xff373737),
                                      fontFamily: kRoboto,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  '3/10/2023',
                                  style: TextStyle(
                                      color: Color(0xff808080),
                                      fontSize: 14,
                                      fontFamily: kRoboto),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 134.w,
                            ),
                            Icon(Icons.arrow_forward_ios,
                                size: 16, color: kBlackColor)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    GestureDetector(
                      child: Container(
                        width: 335.w,
                        height: 80.h,
                        decoration: BoxDecoration(
                          color: Color(0xffD9D9D9),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20.w,
                            ),
                            Image.asset('assets/images/saved.png'),
                            SizedBox(
                              width: 25.w,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 20.h,
                                ),
                                Text(
                                  'Test 3',
                                  style: TextStyle(
                                      color: Color(0xff373737),
                                      fontFamily: kRoboto,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  '3/10/2023',
                                  style: TextStyle(
                                      color: Color(0xff808080),
                                      fontSize: 14,
                                      fontFamily: kRoboto),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 134.w,
                            ),
                            Icon(Icons.arrow_forward_ios,
                                size: 16, color: kBlackColor)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
        ],
      ),
      bottomNavigationBar: NavBar(
          istabbed: false, istabbed1: true, istabbed2: false, istabbed3: false),
    );
  }
}
