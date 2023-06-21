import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fresh/widgets/morningtile/morning_tile.dart';
import 'package:get/get.dart';

class NightScreen extends StatefulWidget {
  const NightScreen({Key? key}) : super(key: key);

  @override
  State<NightScreen> createState() => _NightScreenState();
}

class _NightScreenState extends State<NightScreen> {
  bool isChecked = false;
  var questions = [
    {"title": "Step 1: Cleanser", "description": "CosrX-All Day Cleanser"},
    {"title": "Step 2: Toner", "description": "Ziaja-Tea Tree Toner"},
    {"title": "Step 3: Serum", "description": "The Purest-Salicylic Acid Serum"},
    {"title": "Step 4: Moisturizer", "description": "Cream Co-Moisturizer for Oily Skins"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              InkWell(
                onTap: ()=> Get.back(),
                child: Container(
                  padding: EdgeInsets.only(left: 16.0, top: 16.0),
                  alignment: Alignment.topLeft,
                  child: SvgPicture.asset(
                    "assets/left_arrow_icon.svg",
                    height: 25,
                    width: 25,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(top: 16.0),
                  child: SvgPicture.asset(
                    'assets/night_log.svg',
                    height: 150,
                    width: 150,
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Night Routine',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                height: Get.height*0.5,
                child: ListView.builder(
                    itemCount: questions.length,

                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 15),
                        child: MorningTile(
                            description: questions[index]["description"]!,
                            title: questions[index]["title"]!,
                            isChecked: false),
                      );
                    }),
              ),
              SizedBox(height: 16.0),
              Container(
                width: 370,
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text(
                    'Add Log',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF6179CD),
                    padding: EdgeInsets.symmetric(vertical: 15.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
