import 'package:flutter/material.dart';
import 'package:fresh/screens/changepasswordscreen/change_password_screen.dart';
import 'package:fresh/screens/concernscreen/concern_screen.dart';
import 'package:fresh/screens/forgetpasswordscreen/forget_password_screen.dart';
import 'package:fresh/screens/layoutscreen/layout_screen.dart';
import 'package:fresh/screens/loginscreen/login_screen.dart';
import 'package:fresh/screens/registerscreen/register_screen.dart';
import 'package:fresh/screens/settingsscreen/settings_screen.dart';
import 'package:fresh/screens/skintypescreen/skin_type_screen.dart';
import 'package:fresh/screens/splashscreen/splash_screen.dart';
import 'package:fresh/screens/welcomescreen/welcome_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    initialRoute: '/welcome',
    getPages: [
      GetPage(name: '/', page: () => const SplashScreen()),
      GetPage(name: '/welcome', page: () => const WelcomeScreen()),
      GetPage(name: '/login', page: () => const LoginScreen()),
      GetPage(name: '/register', page: () => const RegisterScreen()),
      GetPage(name: '/layout', page: () => const LayoutScreen()),
      GetPage(name: '/skin-type', page: () => const SkinTypeScreen()),
      GetPage(name: '/concern', page: () => const ConcernScreen()),
      GetPage(name: '/settings', page: () => const SettingScreen()),
      GetPage(
          name: '/change-password', page: () => const ChangePasswordScreen()),
      GetPage(
          name: '/forget-password', page: () => const ForgetPasswordScreen()),
    ],
  ));
}
