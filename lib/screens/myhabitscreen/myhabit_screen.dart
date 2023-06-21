import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class MyHabitScreen extends StatefulWidget {
  const MyHabitScreen({Key? key}) : super(key: key);

  @override
  _MyHabitScreenState createState() => _MyHabitScreenState();
}

class _MyHabitScreenState extends State<MyHabitScreen> {
  bool brushSwitch = false;
  bool waterSwitch = false;
  bool exerciseSwitch = false;
  bool vitaminsSwitch = false;
  bool caffeineSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15 , right: 10, bottom: 10),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left:3.0),
                child: InkWell(
                  highlightColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  radius: 0,
                  onTap: (){Get.back();},
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
                      "assets/my_habit_icon.svg",
                      height: 50,
                      width: 50,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "What’s your habits?",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: Get.height*0.5,
                child: ListView(
                  children: [
                    buildHabitTile('Brush', brushSwitch, (value) {
                      setState(() {
                        brushSwitch = value;
                      });
                    }),
                    buildHabitTile('Drink Water', waterSwitch, (value) {
                      setState(() {
                        waterSwitch = value;
                      });
                    }),
                    buildHabitTile('Do Morning Exercise', exerciseSwitch, (value) {
                      setState(() {
                        exerciseSwitch = value;
                      });
                    }),
                    buildHabitTile('Take Vitamins', vitaminsSwitch, (value) {
                      setState(() {
                        vitaminsSwitch = value;
                      });
                    }),
                    buildHabitTile('Limit Caffeine', caffeineSwitch, (value) {
                      setState(() {
                        caffeineSwitch = value;
                      });
                    }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildHabitTile(String habitName, bool habitSwitch, ValueChanged<bool> onChanged) {
    return ListTile(
      title: Text(habitName),
      trailing: Switch(
        value: habitSwitch,
        onChanged: onChanged,
        activeColor: Color(0xFF6179CD),
      ),
    );
  }
}


