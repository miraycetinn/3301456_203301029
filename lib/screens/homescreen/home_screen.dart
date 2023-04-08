import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fresh/widgets/checkboxitem/check_box_item.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SvgPicture.asset(
                  'assets/home_page_top.svg',
                  height: Get.height * 0.3,
                  alignment: Alignment.topCenter,
                  width: double.infinity,
                ),
                Positioned(
                  top: 120,
                  right: 40,
                  child: Image.asset(
                    'assets/img.png',
                    width: 105,
                    height: 105,
                  ),
                ),
                const Positioned(
                  top: 50,
                  left: 20,
                  child: Text(
                    'Hello,',
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Positioned(
                  top: 90,
                  left: 20,
                  child: Text(
                    'Jane Doe',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left:20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Today's plan",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                  SizedBox(height: 20,),
                  CheckBoxItem(time: "09:00", activityName: "Morning Routine", assetPath: "assets/home_page_top.svg"),
                  CheckBoxItem(time: "09:00", activityName: "Morning Routine", assetPath: "assets/home_page_top.svg"),
                  CheckBoxItem(time: "09:00", activityName: "Morning Routine", assetPath: "assets/home_page_top.svg"),
                ],
              ),
            ),

          ],
        ),

    );
  }
}
