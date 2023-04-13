import 'package:flutter/material.dart';
import 'package:fresh/screens/skintypescreen/skin_type_tile.dart';

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
              Text("data"),
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
              SkinTypeTile(title: "Normal Skin", isActive: false),
              SkinTypeTile(title: "Karma Skin", isActive: false),
              SkinTypeTile(title: "Sensitive Skin", isActive: false),
              SkinTypeTile(title: "Dry Skin", isActive: false),
              SkinTypeTile(title: "Oily Skin", isActive: false),
            ],
          ),
        ),
      ),
    );
  }
}
