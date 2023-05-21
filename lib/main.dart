import 'package:dr_scan_graduation_project/firebase_options.dart';
import 'package:dr_scan_graduation_project/pages/accountinfo_page.dart';
import 'package:dr_scan_graduation_project/pages/body_page.dart';
import 'package:dr_scan_graduation_project/pages/bodyitem_page.dart';
import 'package:dr_scan_graduation_project/pages/diagnosis_result_page.dart';
import 'package:dr_scan_graduation_project/pages/forgetpassword_page.dart';
import 'package:dr_scan_graduation_project/pages/home_page.dart';
import 'package:dr_scan_graduation_project/pages/loading_page.dart';
import 'package:dr_scan_graduation_project/pages/login_page.dart';
import 'package:dr_scan_graduation_project/pages/madicalanalysis_page.dart';
import 'package:dr_scan_graduation_project/pages/medicalDiagnosis_page.dart';
import 'package:dr_scan_graduation_project/pages/password_changed.dart';
import 'package:dr_scan_graduation_project/pages/privacy_page.dart';
import 'package:dr_scan_graduation_project/pages/questions_page.dart';
import 'package:dr_scan_graduation_project/pages/registration_intro_page.dart';
import 'package:dr_scan_graduation_project/pages/resetPassword_page.dart';
import 'package:dr_scan_graduation_project/pages/saved_page.dart';
import 'package:dr_scan_graduation_project/pages/sendEmail_page.dart';
import 'package:dr_scan_graduation_project/pages/sendMessage_page.dart';
import 'package:dr_scan_graduation_project/pages/send_codeEmail.dart';
import 'package:dr_scan_graduation_project/pages/send_codeMessage.dart';
import 'package:dr_scan_graduation_project/pages/setting_page.dart';
import 'package:dr_scan_graduation_project/pages/signup_page.dart';
import 'package:dr_scan_graduation_project/pages/skipregistration_page.dart';
import 'package:dr_scan_graduation_project/pages/splash_page.dart';
import 'package:dr_scan_graduation_project/pages/symptom_page.dart';
import 'package:dr_scan_graduation_project/pages/test_result_page.dart';
import 'package:dr_scan_graduation_project/widgets/nav_bar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:dr_scan_graduation_project/pages/description_pages.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const DrScan());
}

class DrScan extends StatelessWidget {
  const DrScan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            RegistrationIntroPage.id: (context) => RegistrationIntroPage(),
            SplashPage.id: (context) => const SplashPage(),
            LoginPage.id: (context) => const LoginPage(),
            SignupPage.id: (context) => const SignupPage(),
            HomePage.id: (context) => HomePage(),
            ForgetPasswordPage.id: (context) => ForgetPasswordPage(),
            SkipRegistrationPage.id: (context) => SkipRegistrationPage(),
            DescriptionPages.id: (context) => DescriptionPages(),
            SettingPage.id: (context) => const SettingPage(),
            SavedPage.id: (context) => SavedPage(),
            MedicalAnalysisPage.id: (context) => const MedicalAnalysisPage(),
            MedicalDiagnosisPage.id: (context) => MedicalDiagnosisPage(),
            NavBar.id: (context) => NavBar(
                  istabbed: false,
                  istabbed2: false,
                  istabbed1: false,
                  istabbed3: false,
                ),
            BodyPage.id: (context) => BodyPage(),
            SymptomPage.id: (context) => SymptomPage(),
            BodyItemPage.id: (context) => BodyItemPage(),
            QuestionsPage.id: (context) => const QuestionsPage(),
            LoadingPage.id: (context) => const LoadingPage(),
            SendEmailPage.id: (context) => const SendEmailPage(),
            SendMessagePage.id: (context) => const SendMessagePage(),
            SendCodeEmail.id: (context) => const SendCodeEmail(),
            ResetPasswordPage.id: (context) => const ResetPasswordPage(),
            PasswordChangedPage.id: (context) => const PasswordChangedPage(),
            SendCodeMessage.id: (context) => const SendCodeMessage(),
            AccountInfoPage.id: (context) => const AccountInfoPage(),
            PrivacyPage.id: (context) => const PrivacyPage(),
            TestResultPage.id: (context) => const TestResultPage(),
            DiagnosisResultPage.id: (context) => const DiagnosisResultPage()
          },
          initialRoute: SplashPage.id,
        );
      },
    );
  }
}
