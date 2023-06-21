import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fresh/screens/Concernscreen/concern_tile.dart';
import 'package:get/get.dart';

class ConcernScreen extends StatelessWidget {
  const ConcernScreen({Key? key}) : super(key: key);

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
                      "assets/concern_icon.svg",
                      height: 50,
                      width: 50,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "What’s your concerns?",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: Get.height*0.7,
                width: double.infinity,
                child: Wrap(
                direction: Axis.horizontal,
                crossAxisAlignment: WrapCrossAlignment.start,
                runAlignment: WrapAlignment.start,

                children: [
                  ConcernTile(title: "Acne", isActive: false),
                  ConcernTile(title: "Dryness", isActive: false),
                  ConcernTile(title: "Dark spots", isActive: false),
                  ConcernTile(title: "Uneven tone", isActive: false),
                  ConcernTile(title: "Pigmentation", isActive: false),ConcernTile(title: "Acne", isActive: false),
                  ConcernTile(title: "Texture", isActive: false),
                  ConcernTile(title: "Dark spots", isActive: false),
                  ConcernTile(title: "Uneven tone", isActive: false),
                  ConcernTile(title: "Pigmentation", isActive: false),
                  ConcernTile(title: "Eczema", isActive: false),
                  ConcernTile(title: "Uneven tone", isActive: false),
                  ConcernTile(title: "Fine lines", isActive: false),
                ],),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Save"),
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xFF6179CD),
                        padding: EdgeInsets.symmetric(vertical: 15.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        )
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
