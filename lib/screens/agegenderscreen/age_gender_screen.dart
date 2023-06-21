import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AgeGenderScreen extends StatelessWidget {
  const AgeGenderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 10, bottom: 10),
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
                    Navigator.pop(context);
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
                      color: Color.fromRGBO(97, 121, 205, 70),
                    ),
                    child: SvgPicture.asset(
                      "assets/age_gender_icon.svg",
                      height: 50,
                      width: 50,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "What’s your age and gender?",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              DropdownButtonFormField<int>(
                decoration: InputDecoration(
                  hintText: 'Select your age',
                ),menuMaxHeight: 200,
                items: List.generate(100, (index) => index + 1)
                    .map((age) => DropdownMenuItem<int>(
                  value: age,
                  child: Text(age.toString()),
                ))
                    .toList(),
                onChanged: (int? value) {
                  // Handle the selected age
                },
              ),
              SizedBox(
                height: 10,
              ),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  hintText: 'Select your gender',
                ),menuMaxHeight: 200,
                items: ['Male', 'Female', 'Other']
                    .map((gender) => DropdownMenuItem<String>(
                  value: gender,
                  child: Text(gender),
                ))
                    .toList(),
                onChanged: (String? value) {
                  // Handle the selected gender
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}




