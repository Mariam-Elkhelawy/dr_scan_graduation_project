import 'package:dr_scan_graduation_project/constants.dart';
import 'package:dr_scan_graduation_project/pages/madicalanalysis_page.dart';
import 'package:dr_scan_graduation_project/pages/medicalDiagnosis_page.dart';
import 'package:dr_scan_graduation_project/pages/saved_page.dart';
import 'package:dr_scan_graduation_project/pages/setting_page.dart';
import 'package:dr_scan_graduation_project/widgets/customicon_homepage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static String id = 'HomePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 32, 103, 119),
              Color.fromARGB(150, 14, 92, 109),
              Color.fromARGB(255, 137, 137, 137),
            ],
          ),
        ),
        child: Column(
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 89),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, SavedPage.id);
                      },
                      icon: const Icon(
                        FontAwesomeIcons.bookmark,
                        color: kWhiteColor,
                      )),
                ),
                const SizedBox(width: 60),
                const Padding(
                  padding: EdgeInsets.only(top: 110),
                  child: Text(
                    """What do you want
         to do ?""",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: kWhiteColor),
                  ),
                ),
                const SizedBox(
                  width: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 89),
                  child: IconButton(
                    icon: const Icon(
                      FontAwesomeIcons.gear,
                      color: kWhiteColor,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, SettingPage.id);
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 122,
            ),
            HomePageButton(
                onTap: () {
                  Navigator.pushNamed(context, MedicalDiagnosisPage.id);
                },
                image: 'assets/images/medicaldiagnosis_button.png',
                iconText: ' Medical diagnosis'),
            const SizedBox(
              height: 40,
            ),
            HomePageButton(
                onTap: () {
                  Navigator.pushNamed(context, MedicalAnalysisPage.id);
                },
                image: 'assets/images/medicalanalysis_button.png',
                iconText: 'Medical analysis'),
            const SizedBox(
              height: 82,
            ),
            Image.asset('assets/images/homepage_img.png'),
          ],
        ),
      ),
    );
  }
}
