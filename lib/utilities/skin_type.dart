import 'package:fresh/utilities/file.dart';

enum SkinQuestion1Answers { dry, oily, itchy, normal }

enum SkinQuestion2Answers { sensitive, normal, slightlySensitive }

enum SkinQuestion3Answers { a, b, c }

class SkinTypeUtils {
  SkinQuestion1Answers _question1answer = SkinQuestion1Answers.dry;
  SkinQuestion2Answers _question2answer = SkinQuestion2Answers.sensitive;
  SkinQuestion3Answers _question3answer = SkinQuestion3Answers.a;

  SkinTypeUtils() {
    FileUtils().read().then((value) {
      List<String> temp = value.split("\n");
      setQuestion1StringAnswer(temp[0]);
      setQuestion2StringAnswer(temp[1]);
      setQuestion3StringAnswer(temp[2]);
      return value;
    });
  }
  getQuestion1Answer()=> _question1answer;
  getQuestion2Answer()=> _question2answer;
  getQuestion3Answer()=> _question3answer;
  getQuestion1AnswerAsString() {
    switch (_question1answer) {
      case SkinQuestion1Answers.dry:
        return "dry";
      case SkinQuestion1Answers.oily:
        return "oily";
      case SkinQuestion1Answers.itchy:
        return "itchy";
      case SkinQuestion1Answers.normal:
        return "normal";
    }
  }
  getQuestion2AnswerAsString() {
    switch (_question2answer) {
      case SkinQuestion2Answers.sensitive:
        return "sensitive";
      case SkinQuestion2Answers.normal:
        return "normal";
      case SkinQuestion2Answers.slightlySensitive:
        return "slightlySensitive";
    }
  }
  getQuestion3AnswerAsString() {
    switch (_question3answer) {
      case SkinQuestion3Answers.a:
        return "a";
      case SkinQuestion3Answers.b:
        return "b";
      case SkinQuestion3Answers.c:
        return "c";
    }
  }

  setQuestion1Answer(SkinQuestion1Answers answer) {
    _question1answer = answer;
  }
  setQuestion2Answer(SkinQuestion2Answers answer) {
    _question2answer = answer;
  }
  setQuestion3Answer(SkinQuestion3Answers answer) {
    _question3answer = answer;

  }

  setQuestion1StringAnswer(String answer) {
    switch (answer) {
      case "dry":
        _question1answer = SkinQuestion1Answers.dry;
        return;
      case "oily":
        _question1answer = SkinQuestion1Answers.oily;
        return;
      case "itchy":
        _question1answer = SkinQuestion1Answers.itchy;
        return;
      case "normal":
        _question1answer = SkinQuestion1Answers.normal;
        return;
    }
  }
  setQuestion2StringAnswer(String answer) {
    switch (answer) {
      case "sensitive":
        _question2answer = SkinQuestion2Answers.sensitive;
        return;
      case "normal":
        _question2answer = SkinQuestion2Answers.normal;
        return;
      case "slightlySensitive":
        _question2answer = SkinQuestion2Answers.slightlySensitive;
        return;
    }
  }
  setQuestion3StringAnswer(String answer) {
    switch (answer) {
      case "a":
        _question3answer = SkinQuestion3Answers.a;
        return;
      case "b":
        _question3answer = SkinQuestion3Answers.b;
        return;
      case "c":
        _question3answer = SkinQuestion3Answers.c;
        return;
    }
  }




}
