import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fresh/globals.dart' as globals;
import 'package:fresh/screens/skintypescreen/skin_type_tile.dart';
import 'package:fresh/utilities/skin_type.dart';
import 'package:get/get.dart';

class SkinTypeScreen extends StatelessWidget {
  const SkinTypeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3.0),
                child: InkWell(
                  highlightColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  radius: 0,
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.centerLeft,
                    child: SvgPicture.asset(
                      "assets/left_arrow_icon.svg",
                      height: 25,
                      width: 25,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color.fromRGBO(97, 121, 205, 70)),
                    child: SvgPicture.asset(
                      "assets/skin_type_icon.svg",
                      height: 50,
                      width: 50,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "What’s your skin type?",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              SkinTypeTile(
                  title: "Normal Skin",
                  isActive: globals.skinTypeGlobal!.getQuestion1Answer() ==
                      SkinQuestion1Answers.normal),
              SkinTypeTile(
                  title: "Karma Skin",
                  isActive: globals.skinTypeGlobal!.getQuestion1Answer() ==
                      SkinQuestion1Answers.itchy),
              SkinTypeTile(
                  title: "Sensitive Skin",
                  isActive: globals.skinTypeGlobal!.getQuestion2Answer() ==
                      SkinQuestion2Answers.sensitive),
              SkinTypeTile(
                  title: "Dry Skin",
                  isActive: globals.skinTypeGlobal!.getQuestion1Answer() ==
                      SkinQuestion1Answers.dry),
              SkinTypeTile(
                  title: "Oily Skin",
                  isActive: globals.skinTypeGlobal!.getQuestion1Answer() ==
                      SkinQuestion1Answers.oily),
            ],
          ),
        ),
      ),
    );
  }
}
