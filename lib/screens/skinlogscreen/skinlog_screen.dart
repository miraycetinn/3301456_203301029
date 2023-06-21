import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fresh/models/database.handler.dart';
import 'package:fresh/models/skin_log.model.dart';
import 'package:get/get.dart';

import '../../utilities/skin_type.dart';

class SkinLogScreen extends StatefulWidget {
  const SkinLogScreen({Key? key}) : super(key: key);

  @override
  State<SkinLogScreen> createState() => _SkinLogScreenState();
}

class _SkinLogScreenState extends State<SkinLogScreen> {
  SkinTypeUtils skinTypeHandler = SkinTypeUtils();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            InkWell(
              onTap: () => Get.back(),
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
                  'assets/skin_log.svg',
                  height: 150,
                  width: 150,
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'How would you describe your skin today?',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            ListTile(
              title: const Text('Normal'),
              leading: Radio<SkinQuestion1Answers>(
                value: SkinQuestion1Answers.normal,
                groupValue: skinTypeHandler.getQuestion1Answer(),
                onChanged: (SkinQuestion1Answers? value) {
                  setState(() {
                    skinTypeHandler.setQuestion1Answer(value!);
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Dry'),
              leading: Radio<SkinQuestion1Answers>(
                value: SkinQuestion1Answers.dry,
                groupValue: skinTypeHandler.getQuestion1Answer(),
                onChanged: (SkinQuestion1Answers? value) {
                  setState(() {
                    skinTypeHandler.setQuestion1Answer(value!);
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Oily'),
              leading: Radio<SkinQuestion1Answers>(
                value: SkinQuestion1Answers.oily,
                groupValue: skinTypeHandler.getQuestion1Answer(),
                onChanged: (SkinQuestion1Answers? value) {
                  setState(() {
                    skinTypeHandler.setQuestion1Answer(value!);
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Itchy'),
              leading: Radio<SkinQuestion1Answers>(
                value: SkinQuestion1Answers.itchy,
                groupValue: skinTypeHandler.getQuestion1Answer(),
                onChanged: (SkinQuestion1Answers? value) {
                  setState(() {
                    skinTypeHandler.setQuestion1Answer(value!);
                  });
                },
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              width: 370,
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  DatabaseHandler().addSkinLog([
                    SkinLog(
                        skinStatus:
                            skinTypeHandler.getQuestion1AnswerAsString())
                  ]).then((value) => Get.back());
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
    );
  }
}
