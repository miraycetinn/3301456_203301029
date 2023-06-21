import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fresh/models/database.handler.dart';
import 'package:fresh/screens/agegenderscreen/age_gender_screen.dart';
import 'package:fresh/screens/changepasswordscreen/change_password_screen.dart';
import 'package:fresh/screens/concernscreen/concern_screen.dart';
import 'package:fresh/screens/forgetpasswordscreen/forget_password_screen.dart';
import 'package:fresh/screens/layoutscreen/layout_screen.dart';
import 'package:fresh/screens/loginscreen/login_screen.dart';
import 'package:fresh/screens/morningscreen/morning_screen.dart';
import 'package:fresh/screens/myhabitscreen/myhabit_screen.dart';
import 'package:fresh/screens/nightscreen/night_screen.dart';
import 'package:fresh/screens/questionsscreen/questions_screen.dart';
import 'package:fresh/screens/registerscreen/register_screen.dart';
import 'package:fresh/screens/settingsscreen/settings_screen.dart';
import 'package:fresh/screens/skinlogscreen/skinlog_screen.dart';
import 'package:fresh/screens/skintypescreen/skin_type_screen.dart';
import 'package:fresh/screens/splashscreen/splash_screen.dart';
import 'package:fresh/screens/welcomescreen/welcome_screen.dart';
import 'package:get/get.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DatabaseHandler().initializeDatabase();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(GetMaterialApp(
    initialRoute: '/',
    getPages: [
      GetPage(name: '/', page: () => const SplashScreen()),
      GetPage(name: '/welcome', page: () => const WelcomeScreen()),
      GetPage(name: '/login', page: () => LoginScreen()),
      GetPage(name: '/register', page: () => const RegisterScreen()),
      GetPage(name: '/layout', page: () => const LayoutScreen()),
      GetPage(name: '/skin-type', page: () => const SkinTypeScreen()),
      GetPage(name: '/concern', page: () => const ConcernScreen()),
      GetPage(name: '/my-habit', page:() => const MyHabitScreen()),
      GetPage(name: '/age-gender', page:() => const AgeGenderScreen()),
      GetPage(name: '/settings', page: () => const SettingScreen()),
      GetPage(name: '/questions', page: () => const QuestionsScreen()),
      GetPage(name: '/skin-log', page: () => const SkinLogScreen()),
      GetPage(name: '/morning-routine', page: () => const MorningScreen()),
      GetPage(name: '/night-routine', page: () => const NightScreen()),
      GetPage(
          name: '/change-password', page: () => const ChangePasswordScreen()),
      GetPage(
          name: '/forget-password', page: () => const ForgetPasswordScreen()),
    ],
  ));
}
