import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final logosize = 0.0.obs;

  void changeLogoSize() {
    logosize.value += 400;
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      changeLogoSize();
    });

    Future.delayed(const Duration(seconds: 3), () {
      Get.toNamed('/welcome');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Center(
                child: Obx(
                  () => AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    curve: Curves.bounceOut,
                    width: logosize.value,
                    height: logosize.value,
                    child:
                    SvgPicture.asset('assets/splash_icon.svg')
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
