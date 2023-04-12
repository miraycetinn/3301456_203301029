import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  static TextEditingController loginEmailTextController = TextEditingController();
  static TextEditingController loginPasswordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
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
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Welcome Back!", style: TextStyle(
                      fontSize: 40, fontWeight: FontWeight.bold,),),
                    Container(
                      height: 200,
                      width: 300,
                      child: SvgPicture.asset('assets/login_illustration.svg'),
                    ),
                    SizedBox(height: 9),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          color: Color(0xFFECECEC),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Opacity(opacity: 0.4, child: TextField(
                          controller: loginEmailTextController,
                          decoration: InputDecoration(
                            hintText: 'Enter Your Email',
                            border: InputBorder.none,),),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          color: Color(0xFFECECEC),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Opacity(opacity: 0.4, child: TextField(
                          controller: loginPasswordTextController,
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Enter Your Password',
                            border: InputBorder.none,),),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: ElevatedButton(
                          onPressed: () {
                            if (loginPasswordTextController.value.text == ""){
                              showDialog(context: context, builder: (BuildContext context) {
                                return alertBlankPassword;
                              });
                            } else if (!loginEmailTextController.value.text.isEmail) {
                              showDialog(context: context, builder: (BuildContext context) {
                                return alertWrongEmail;
                              });
                            } else if (loginPasswordTextController.value.text == "sifrem"){
                              Get.offAllNamed('/layout');
                            }
                            else{
                              showDialog(context: context, builder: (BuildContext context) {
                                return alertWrongCredits;
                              });
                            }
                            // Butona tıklandığında yapılacak işlemler burada yer alır.
                            },
                          child: Text('Log In', style: TextStyle(fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,),),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFF6179CD),
                            padding: EdgeInsets.symmetric(vertical: 15.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

AlertDialog alertWrongEmail = AlertDialog(title: Text("Hatalı Email"));
AlertDialog alertWrongCredits = AlertDialog(title: Text("Bilgileriniz hatalı"));
AlertDialog alertBlankPassword = AlertDialog(title: Text("Şifre giriniz"));
