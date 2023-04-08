import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: SvgPicture.asset(
              'assets/bubble.svg',
              height: 150,
              width: 150,
            ),
          ),
          Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: Get.height * 0.3,
                      width: Get.height * 0.3,
                      child:
                          SvgPicture.asset('assets/welcome_illustration.svg'),
                    ),
                    Text(
                      'Get your skin healthier.',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 45),
                            child: ElevatedButton(
                              onPressed: () {
                                Get.toNamed('/login');
                                // Butona tıklandığında yapılacak işlemler burada yer alır.
                              },
                              child: Text(
                                'Log In',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xFF6179CD),
                                onPrimary: Color(0xFFFFFFFF),
                                padding: EdgeInsets.symmetric(vertical: 15.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 45),
                            child: ElevatedButton(
                              onPressed: () {
                                Get.toNamed('/register');
                                // Butona tıklandığında yapılacak işlemler burada yer alacak.
                              },
                              child: Text('Sign Up',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  )),
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xFF6179CD),
                                onPrimary: Color(0xFFFFFFFF),
                                padding: EdgeInsets.symmetric(vertical: 15.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 200),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
