import 'package:dr_scan_graduation_project/constants.dart';
import 'package:dr_scan_graduation_project/pages/bodyitem_page.dart';
import 'package:dr_scan_graduation_project/pages/medicalDiagnosis_page.dart';
import 'package:dr_scan_graduation_project/pages/symptom_page.dart';
import 'package:dr_scan_graduation_project/widgets/custom_button.dart';
import 'package:dr_scan_graduation_project/widgets/nav_bar.dart';
import 'package:dr_scan_graduation_project/widgets/progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BodyPage extends StatefulWidget {
  BodyPage();
  static String id = 'BodyPage';

  @override
  State<BodyPage> createState() => _BodyPageState();
}

class _BodyPageState extends State<BodyPage> {
  bool isHead = false;
  bool isChest = false;
  bool isUnderChest = false;
  bool isAbdomen = false;
  bool isPelvis = false;
  bool isHandUpL = false;
  bool isHandUpR = false;
  bool isHandBottomL = false;
  bool isHandBottomR = false;
  bool isHandL = false;
  bool isHandR = false;
  bool isLegsUp = false;
  bool isLegsMed = false;
  bool isLegsBottom = false;
  bool isFoot = false;
  bool isRotate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Column(
        children: [
          SizedBox(
            height: 90,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, BodyItemPage.id);
                    },
                    icon: const Icon(
                      FontAwesomeIcons.listDots,
                      color: Color(0xff3A3A3A),
                      size: 24,
                    )),
                SizedBox(
                  width: 70,
                ),
                Text(
                  'Diagnosis',
                  style: TextStyle(
                      fontSize: 23,
                      fontFamily: kRoboto,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 70,
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        isRotate = !isRotate;
                      });
                    },
                    icon: Icon(
                      FontAwesomeIcons.arrowRotateLeft,
                      color: Color(0xff3A3A3A),
                      size: 24,
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 22, left: 42, bottom: 22),
            child: ProgressBar(
                ticks: 3,
                first1: true,
                second1: false,
                first2: false,
                second2: false,
                first3: false,
                second3: false),
          ),
          Text(
            """choose the part of the body that you
                 feel pain on it """,
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: kRoboto,
                color: Color(0xff727272),
                fontSize: 15),
          ),
          Container(
              height: 430,
              width: 500,
              child: Stack(
                children: [
                  Image.asset(
                    isRotate
                        ? 'assets/images/body_back.jpg'
                        : 'assets/images/body.jpg',
                    fit: BoxFit.fitHeight,
                    width: 500,
                    height: 430,
                  ),
                  Positioned(
                    top: 14,
                    left: 172,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isHead = true;
                          isChest = false;
                          isUnderChest = false;
                          isAbdomen = false;
                          isPelvis = false;
                          isHandUpL = false;
                          isHandUpR = false;
                          isHandBottomL = false;
                          isHandBottomR = false;
                          isHandL = false;
                          isHandR = false;
                          isLegsUp = false;
                          isLegsMed = false;
                          isLegsBottom = false;
                          isFoot = false;
                        });
                      },
                      child: Image.asset(
                        'assets/images/head.png',
                        opacity: isHead
                            ? AlwaysStoppedAnimation(1)
                            : AlwaysStoppedAnimation(0),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 79,
                    left: 155,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isHead = false;
                          isChest = true;
                          isUnderChest = false;
                          isAbdomen = false;
                          isPelvis = false;
                          isHandUpL = false;
                          isHandUpR = false;
                          isHandBottomL = false;
                          isHandBottomR = false;
                          isHandL = false;
                          isHandR = false;
                          isLegsUp = false;
                          isLegsMed = false;
                          isLegsBottom = false;
                          isFoot = false;
                        });
                      },
                      child: Image.asset(
                        'assets/images/chest.png',
                        opacity: isChest
                            ? AlwaysStoppedAnimation(1)
                            : AlwaysStoppedAnimation(0),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 126,
                    left: 160,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isHead = false;
                          isChest = false;
                          isUnderChest = true;
                          isAbdomen = false;
                          isPelvis = false;
                          isHandUpL = false;
                          isHandUpR = false;
                          isHandBottomL = false;
                          isHandBottomR = false;
                          isHandL = false;
                          isHandR = false;
                          isLegsUp = false;
                          isLegsMed = false;
                          isLegsBottom = false;
                          isFoot = false;
                        });
                      },
                      child: Image.asset(
                        'assets/images/underchest.png',
                        opacity: isUnderChest
                            ? AlwaysStoppedAnimation(1)
                            : AlwaysStoppedAnimation(0),
                      ),
                    ),
                  ),
                  Positioned(
                      top: 153,
                      left: 163,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isHead = false;
                            isChest = false;
                            isUnderChest = false;
                            isAbdomen = true;
                            isPelvis = false;
                            isHandUpL = false;
                            isHandUpR = false;
                            isHandBottomL = false;
                            isHandBottomR = false;
                            isHandL = false;
                            isHandR = false;
                            isLegsUp = false;
                            isLegsMed = false;
                            isLegsBottom = false;
                            isFoot = false;
                          });
                        },
                        child: Image.asset(
                          'assets/images/Abdomen.png',
                          opacity: isAbdomen
                              ? AlwaysStoppedAnimation(1)
                              : AlwaysStoppedAnimation(0),
                        ),
                      )),
                  Positioned(
                      top: 187,
                      left: 159,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isHead = false;
                            isChest = false;
                            isUnderChest = false;
                            isAbdomen = false;
                            isPelvis = true;
                            isHandUpL = false;
                            isHandUpR = false;
                            isHandBottomL = false;
                            isHandBottomR = false;
                            isHandL = false;
                            isHandR = false;
                            isLegsUp = false;
                            isLegsMed = false;
                            isLegsBottom = false;
                            isFoot = false;
                          });
                        },
                        child: Image.asset(
                          'assets/images/Pelvis.png',
                          opacity: isPelvis
                              ? AlwaysStoppedAnimation(1)
                              : AlwaysStoppedAnimation(0),
                        ),
                      )),
                  Positioned(
                      top: 83,
                      left: 234,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isHead = false;
                            isChest = false;
                            isUnderChest = false;
                            isAbdomen = false;
                            isPelvis = false;
                            isHandUpL = true;
                            isHandUpR = true;
                            isHandBottomL = false;
                            isHandBottomR = false;
                            isHandL = false;
                            isHandR = false;
                            isLegsUp = false;
                            isLegsMed = false;
                            isLegsBottom = false;
                            isFoot = false;
                          });
                        },
                        child: Image.asset(
                          'assets/images/handupLeft.png',
                          opacity: isHandUpL || isHandUpR
                              ? AlwaysStoppedAnimation(1)
                              : AlwaysStoppedAnimation(0),
                        ),
                      )),
                  Positioned(
                      top: 83,
                      left: 115,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isHead = false;
                            isChest = false;
                            isUnderChest = false;
                            isAbdomen = false;
                            isPelvis = false;
                            isHandUpL = true;
                            isHandUpR = true;
                            isHandBottomL = false;
                            isHandBottomR = false;
                            isHandL = false;
                            isHandR = false;
                            isLegsUp = false;
                            isLegsMed = false;
                            isLegsBottom = false;
                            isFoot = false;
                          });
                        },

                        child: Image.asset(
                          'assets/images/handupRight.png',
                          opacity: isHandUpL || isHandUpR
                              ? AlwaysStoppedAnimation(1)
                              : AlwaysStoppedAnimation(0),
                        ),
                      )),
                  Positioned(
                      top: 125,
                      left: 264,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isHead = false;
                            isChest = false;
                            isUnderChest = false;
                            isAbdomen = false;
                            isPelvis = false;
                            isHandUpL = false;
                            isHandUpR = false;
                            isHandBottomL = true;
                            isHandBottomR = true;
                            isHandL = false;
                            isHandR = false;
                            isLegsUp = false;
                            isLegsMed = false;
                            isLegsBottom = false;
                            isFoot = false;
                          });
                        },

                        child: Image.asset(
                          'assets/images/handbottomLeft.png',
                          opacity: isHandBottomL || isHandBottomR
                              ? AlwaysStoppedAnimation(1)
                              : AlwaysStoppedAnimation(0),
                        ),
                      )),
                  Positioned(
                      top: 125,
                      left: 70,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isHead = false;
                            isChest = false;
                            isUnderChest = false;
                            isAbdomen = false;
                            isPelvis = false;
                            isHandUpL = false;
                            isHandUpR = false;
                            isHandBottomL = true;
                            isHandBottomR = true;
                            isHandL = false;
                            isHandR = false;
                            isLegsUp = false;
                            isLegsMed = false;
                            isLegsBottom = false;
                            isFoot = false;
                          });
                        },

                        child: Image.asset(
                          'assets/images/handbottomRight.png',
                          opacity: isHandBottomL || isHandBottomR
                              ? AlwaysStoppedAnimation(1)
                              : AlwaysStoppedAnimation(0),
                        ),
                      )),
                  Positioned(
                      top: 170,
                      left: 318,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isHead = false;
                            isChest = false;
                            isUnderChest = false;
                            isAbdomen = false;
                            isPelvis = false;
                            isHandUpL = false;
                            isHandUpR = false;
                            isHandBottomL = false;
                            isHandBottomR = false;
                            isHandL = true;
                            isHandR = true;
                            isLegsUp = false;
                            isLegsMed = false;
                            isLegsBottom = false;
                            isFoot = false;
                          });
                        },

                        child: Image.asset(
                          'assets/images/handLeft.png',
                          opacity: isHandL || isHandR
                              ? AlwaysStoppedAnimation(1)
                              : AlwaysStoppedAnimation(0),
                        ),
                      )),
                  Positioned(
                      top: 170,
                      left: 37,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isHead = false;
                            isChest = false;
                            isUnderChest = false;
                            isAbdomen = false;
                            isPelvis = false;
                            isHandUpL = false;
                            isHandUpR = false;
                            isHandBottomL = false;
                            isHandBottomR = false;
                            isHandL = true;
                            isHandR = true;
                            isLegsUp = false;
                            isLegsMed = false;
                            isLegsBottom = false;
                            isFoot = false;
                          });
                        },

                        child: Image.asset(
                          'assets/images/handRight.png',
                          opacity: isHandL || isHandR
                              ? AlwaysStoppedAnimation(1)
                              : AlwaysStoppedAnimation(0),
                        ),
                      )),
                  Positioned(
                    top: 231,
                    left: 159,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isHead = false;
                          isChest = false;
                          isUnderChest = false;
                          isAbdomen = false;
                          isPelvis = false;
                          isHandUpL = false;
                          isHandUpR = false;
                          isHandBottomL = false;
                          isHandBottomR = false;
                          isHandL = false;
                          isHandR = false;
                          isLegsUp = true;
                          isLegsMed = false;
                          isLegsBottom = false;
                          isFoot = false;
                        });
                      },
                      child: InkWell(
                        child: Image.asset(
                          'assets/images/legsup.png',
                          opacity: isLegsUp
                              ? AlwaysStoppedAnimation(1)
                              : AlwaysStoppedAnimation(0),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 281,
                    left: 163,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isHead = false;
                          isChest = false;
                          isUnderChest = false;
                          isAbdomen = false;
                          isPelvis = false;
                          isHandUpL = false;
                          isHandUpR = false;
                          isHandBottomL = false;
                          isHandBottomR = false;
                          isHandL = false;
                          isHandR = false;
                          isLegsUp = false;
                          isLegsMed = true;
                          isLegsBottom = false;
                          isFoot = false;
                        });
                      },

                      child: Image.asset(
                        'assets/images/legsmed.png',
                        opacity: isLegsMed
                            ? AlwaysStoppedAnimation(1)
                            : AlwaysStoppedAnimation(0),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 307,
                    left: 159,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isHead = false;
                          isChest = false;
                          isUnderChest = false;
                          isAbdomen = false;
                          isPelvis = false;
                          isHandUpL = false;
                          isHandUpR = false;
                          isHandBottomL = false;
                          isHandBottomR = false;
                          isHandL = false;
                          isHandR = false;
                          isLegsUp = false;
                          isLegsMed = false;
                          isLegsBottom = true;
                          isFoot = false;
                        });
                      },

                      child: Image.asset(
                        'assets/images/legsbottom.png',
                        opacity: isLegsBottom
                            ? AlwaysStoppedAnimation(1)
                            : AlwaysStoppedAnimation(0),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 377,
                    left: 153,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isHead = false;
                          isChest = false;
                          isUnderChest = false;
                          isAbdomen = false;
                          isPelvis = false;
                          isHandUpL = false;
                          isHandUpR = false;
                          isHandBottomL = false;
                          isHandBottomR = false;
                          isHandL = false;
                          isHandR = false;
                          isLegsUp = false;
                          isLegsMed = false;
                          isLegsBottom = false;
                          isFoot = true;
                        });
                      },
                      child: Image.asset(
                        'assets/images/foot.png',
                        opacity: isFoot
                            ? AlwaysStoppedAnimation(1)
                            : AlwaysStoppedAnimation(0),
                      ),
                    ),
                  ),
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(left: 35, right: 15),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, MedicalDiagnosisPage.id);
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
                    width: 137,
                  ),
                  CustomButton(
                      onTap: () {
                        Navigator.pushNamed(context, SymptomPage.id);
                      },
                      text: 'Next',
                      size: 16,
                      width: 124,
                      height: 47,
                      color: kPrimaryColor,
                      borderRadius: 10,
                      textColor: kWhiteColor,
                      borderColor: kPrimaryColor),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: NavBar(istabbed2: true,istabbed: false,istabbed3: false,istabbed1: false,),
    );
  }
}

// import 'package:flutter/material.dart';
//
//
// class BodyPage extends StatefulWidget {
//   BodyPage();
//   static String id = 'BodyPage';
//
//   @override
//   _BodyPageState createState() => _BodyPageState();
// }
// class _BodyPageState extends State {
//   String status = '';
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       body: Center(
//         child: Column(
//
//           crossAxisAlignment: CrossAxisAlignment.center,
//
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//
//             Text('Mouse Status : $status'),
//             SizedBox(
//               height: 30,
//             ),
//
//             MouseRegion(
//               cursor: SystemMouseCursors.click,
//               opaque: false,
//
//               onHover: (s) {
//
//                 setState(() {
//
//                   status = 'Mouse-hovering on region';
//                 });
//               },
//
//               child: Container(
//
//                 height: 60.0,
//                 width: 60.0,
//
//                 decoration: BoxDecoration(
//                   color: Colors.blueAccent,
//
//                   borderRadius: BorderRadius.circular(15.0),
//
//                   border: Border.all(color: Colors.blueAccent),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
