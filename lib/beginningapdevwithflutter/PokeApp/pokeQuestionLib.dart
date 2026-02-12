import 'package:learnflutter/beginningapdevwithflutter/PokeApp/question.dart';
import 'dart:math';

class PokeQuestionLib {
  int _questionNumber = 0;
  int _numberOfQuestions = 0;
  List<int> _questionNumberTrack = [];

  List<PokeQuestion> _pokeQuestionList = [
    PokeQuestion(1, 'This is Pika?', false),
    PokeQuestion(2, 'This is the heaviest pokemon?', true),
  ];

  int getQuestionNumber() {
    _questionNumber = Random().nextInt(2) + 1;
    if (_questionNumberTrack.contains(_questionNumber)) {
      _questionNumber = Random().nextInt(2) + 1;
    } else {
      _questionNumberTrack.add(_questionNumber);
      _numberOfQuestions++;
    }
    return _questionNumber;
  }

  int getImageNumber() {
    return _pokeQuestionList[_questionNumber].questionNumber;
  }

  String getQuestion() {
    return _pokeQuestionList[_questionNumber].questionText;
  }

  bool getQuestionCorrectAnswer() {
    return _pokeQuestionList[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_numberOfQuestions == 11) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _numberOfQuestions = 0;
    _questionNumberTrack = [];
  }
}
