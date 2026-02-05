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
  List scoreKeep = [];

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

  int questionNumber = 0;
  QuestionLib questionLib = QuestionLib();

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
                    questionLib.questionBank[questionNumber].questionText,
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
                    bool correctAnswer =
                        questionLib.questionBank[questionNumber].questionAnswer;
                    if (correctAnswer == true) {
                      print('Correct answer');
                    } else {
                      print('Not correct');
                    }
                    setState(() {
                      questionNumber = Random().nextInt(12);
                      print(questionNumber);
                    });
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
                    bool correctAnswer =
                        questionLib.questionBank[questionNumber].questionAnswer;
                    if (correctAnswer == false) {
                      print('Correct answer');
                    } else {
                      print('Not correct');
                    }
                    setState(() {
                      questionNumber = Random().nextInt(12);
                      print(questionNumber);
                    });
                  },
                ),
              ),
            ),
            Row(
              children: [],
            ),
          ],
        ),
      ),
    );
  }
}
