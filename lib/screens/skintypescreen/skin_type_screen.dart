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
                        color: Colors.red),
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
              SkinTypeTile(title: "title", isActive: false),
              SkinTypeTile(title: "title", isActive: false),
              SkinTypeTile(title: "title", isActive: false),
              SkinTypeTile(title: "title", isActive: false),
              SkinTypeTile(title: "title", isActive: false),
            ],
          ),
        ),
      ),
    );
  }
}
