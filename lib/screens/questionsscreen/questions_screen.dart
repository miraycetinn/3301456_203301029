import 'package:flutter/material.dart';
import 'package:fresh/utilities/file.dart';
import 'package:fresh/utilities/skin_type.dart';
import 'package:get/get.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({Key? key}) : super(key: key);

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}


class _QuestionsScreenState extends State<QuestionsScreen> {
SkinTypeUtils skinTypeHandler = SkinTypeUtils();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Skip"),
                style: ElevatedButton.styleFrom(
                    primary: Color(0xFF6179CD),
                    padding: EdgeInsets.symmetric(vertical: 15.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    )),
              ),
            ),
            Text("Let's start with some question!"),
            Column(
              children: <Widget>[
                Text("1. What type of skin do you have?"),
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
                  title: const Text('Combination'),
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
              ],
            ),
            Column(
              children: <Widget>[
                Text("2. How would you describe the sensitivity of your skin?"),
                ListTile(
                  title: const Text('Sensitive'),
                  leading: Radio<SkinQuestion2Answers>(
                    value: SkinQuestion2Answers.sensitive,
                    groupValue: skinTypeHandler.getQuestion2Answer(),
                    onChanged: (SkinQuestion2Answers? value) {
                      setState(() {
                        skinTypeHandler.setQuestion2Answer(value!);
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('Normal'),
                  leading: Radio<SkinQuestion2Answers>(
                    value: SkinQuestion2Answers.normal,
                    groupValue: skinTypeHandler.getQuestion2Answer(),
                    onChanged: (SkinQuestion2Answers? value) {
                      setState(() {
                        skinTypeHandler.setQuestion2Answer(value!);
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('Slightly Sensitive'),
                  leading: Radio<SkinQuestion2Answers>(
                    value: SkinQuestion2Answers.slightlySensitive,
                    groupValue: skinTypeHandler.getQuestion2Answer(),
                    onChanged: (SkinQuestion2Answers? value) {
                      setState(() {
                        skinTypeHandler.setQuestion2Answer(value!);
                      });
                    },
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Text(
                    "3.Can you tell me about any spots or redness on your skin?"),
                ListTile(
                  title: const Text('I have noticeable spots and redness'),
                  leading: Radio<SkinQuestion3Answers>(
                    value: SkinQuestion3Answers.a,
                    groupValue: skinTypeHandler.getQuestion3Answer(),
                    onChanged: (SkinQuestion3Answers? value) {
                      setState(() {
                        skinTypeHandler.setQuestion3Answer(value!);
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('I have a few spots and redness'),
                  leading: Radio<SkinQuestion3Answers>(
                    value: SkinQuestion3Answers.b,
                    groupValue: skinTypeHandler.getQuestion3Answer(),
                    onChanged: (SkinQuestion3Answers? value) {
                      setState(() {
                        skinTypeHandler.setQuestion3Answer(value!);
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('I have very few or no spots and redness'),
                  leading: Radio<SkinQuestion3Answers>(
                    value: SkinQuestion3Answers.c,
                    groupValue: skinTypeHandler.getQuestion3Answer(),
                    onChanged: (SkinQuestion3Answers? value) {
                      setState(() {
                        skinTypeHandler.setQuestion3Answer(value!);
                      });
                    },
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {

                FileUtils().write(skinTypeHandler.getQuestion1AnswerAsString() +
                    "\n" +
                    skinTypeHandler.getQuestion2AnswerAsString() +
                    "\n" +
                    skinTypeHandler.getQuestion3AnswerAsString() +
                    "\n");
                Get.offAndToNamed("/layout");
              },
              child: Text("Devam"),
            ),
          ],
        ),
      ),
    );
  }
}
