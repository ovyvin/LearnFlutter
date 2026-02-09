import 'package:flutter/material.dart';
import 'package:learnflutter/beginningapdevwithflutter/Quizller/question.dart';
import 'package:learnflutter/beginningapdevwithflutter/Quizller/quiz.dart';
import 'package:learnflutter/beginningapdevwithflutter/Quizller/questionlist.dart';
import 'dart:math';

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  List<Icon> scoreKeep = [];

  // List<String> questionsList = [
  //   'Sky is blue?',
  //   'Sky is red?',
  //   'Sky is yellow?',
  // ];

  // List<bool> questionsAnswer = [
  //   true,
  //   false,
  //   false,
  // ];

  // Question q1 = Question(q: 'Sky is blue?', a: true);

  // List<Question> questionBank = [
  //   Question(q: 'Sky is blue?', a: true),
  //   Question(q: 'Sky is red?', a: false),
  //   Question(q: 'Sky is yellow?', a: false),
  // ];
  //

  QuestionLib questionLib = QuestionLib();

  void checkAnswer(bool theAnswer) {
    bool correctAnswer = questionLib.getQuestionAnswer();
    if (correctAnswer == theAnswer) {
      scoreKeep.add(Icon(Icons.check, color: Colors.green));
    } else {
      scoreKeep.add(Icon(Icons.close, color: Colors.red));
    }
    setState(() {
      questionLib.questioNumber();
      print(questionLib.getQuestionNumber());
    });
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 5,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    questionLib.getQuestionText(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: TextButton(
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.green),
                  ),
                  child: Text(
                    'True',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  onPressed: () {
                    checkAnswer(true);
                  },
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: TextButton(
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.red),
                  ),
                  child: Text(
                    'False',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  onPressed: () {
                    checkAnswer(false);
                  },
                ),
              ),
            ),
            Row(
              children: scoreKeep,
            ),
          ],
        ),
      ),
    );
  }
}
