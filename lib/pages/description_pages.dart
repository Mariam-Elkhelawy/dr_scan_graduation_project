import 'package:dr_scan_graduation_project/pages/registration_intro_page.dart';
import 'package:dr_scan_graduation_project/widgets/description_widget.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:page_transition/page_transition.dart';

class DescriptionPages extends StatelessWidget {
  DescriptionPages({Key? key}) : super(key: key);

  static String id = 'DescriptionPages';
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      PageView(
        controller: controller,
        children: [
          DescriptionWidget(
            onpressed: () {
              Navigator.pop(context);
            },
            onTap: () {
              Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: nextPage()));
            },
            screenName: 'Diagnosis',
            buttonText: 'Next',
            screenImage: 'assets/images/diagonsis_dscription.gif',
            skipText: 'Skip',
            description: """The program takes care of the diagnosis by asking the patient some questions and helping him to find the part that he feel the pain on it, and through that it identifies the specialist doctor to treat him.""",
          ),
          DescriptionWidget(
            onpressed: () {
              Navigator.pushNamed(context, previousPage());
            },
            onTap: () {
              Navigator.popAndPushNamed(context, RegistrationIntroPage.id);
            },
            screenName: 'Medical Analysis',
            buttonText: 'Start',
            screenImage: 'assets/images/medical_analysis_dscription.gif',
            description: 'The program reads the medical analysis easier and faster instead of going to the doctor. In each analysis translates the results continuously, thus saving time and effort for the patient and the consultant doctor.',
          ),
        ],
      ),
      Container(
        alignment: Alignment(0, .93),
        child: SmoothPageIndicator(
          controller: controller,
          count: 2,
          effect: ExpandingDotsEffect(
            activeDotColor: Color(0xff8A8A8A),
            spacing: 10,
            dotHeight: 10,
            dotWidth: 25,
            dotColor: Color(0xffD2D0C5),

          ),
        ),
      ),
    ]);
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
