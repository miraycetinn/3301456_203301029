import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fresh/globals.dart' as globals;
import 'package:fresh/screens/profilescreen/select_tile.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Get.toNamed("/settings");
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    alignment: Alignment.center,
                    child: SvgPicture.asset(
                      'assets/setting_icon.svg',
                      height: Get.height * 0.3,
                      alignment: Alignment.topCenter,
                      width: double.infinity,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Stack(
            children: [
              SizedBox(
                  height: 120,
                  width: 120,
                  child: Image(image: AssetImage("assets/img.png"))),
              Padding(
                padding: const EdgeInsets.only(top: 100.0),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(
                    width: 100,
                    height: 40,
                    alignment: Alignment.center,
                    child: Text(
                      "Premium",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromRGBO(144, 161, 220, 1)),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              globals.user!.fullName,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30),
            ),
          ),
          Container(
            width: Get.width * 0.9,
            height: 100,
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.3),
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "0",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                    Text("charm days")
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "0",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                    Text("charm days")
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "0",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                    Text("charm days")
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.3),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Column(
                  children: [
                    SelectTile(
                        iconPath: "assets/skin_type_icon.svg",
                        title: "Skin Type",
                        onClick: () {
                          Get.toNamed("/skin-type");
                        }),
                    SelectTile(
                        iconPath: "assets/concern_icon.svg",
                        title: "Concern",
                        onClick: () {
                          Get.toNamed("/concern");
                        }),
                    SelectTile(
                        iconPath: "assets/my_habit_icon.svg",
                        title: "My Habits",
                        onClick: () {
                          Get.toNamed("/my-habit");
                        }),
                    SelectTile(
                        iconPath: "assets/age_gender_icon.svg",
                        title: "Age & Gender",
                        onClick: () {
                          Get.toNamed("/age-gender");
                        }),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
