import 'package:learnflutter/beginningapdevwithflutter/PokeApp/question.dart';
import 'dart:math';

class PokeQuestionLib {
  int _questionNumber = 0;
  int _numberOfQuestions = 0;
  List<int> _questionNumberTrack = [];

  List<PokeQuestion> _pokeQuestionList = [
    PokeQuestion(1, 'This is Pika?', false),
    PokeQuestion(2, 'This is the heaviest pokemon?', true),
    PokeQuestion(3, 'Jynx has the longest battle cry.', true),
    PokeQuestion(4, 'Pika has the longest battle cry.', false),
    PokeQuestion(5, 'This is Pikachu.', true),
    PokeQuestion(6, 'Machamp is Wearing Underwear', false),
    PokeQuestion(7, 'This is Machamp', true),
    PokeQuestion(8, 'Spearow is colorblind', true),
    PokeQuestion(9, 'This is Spearow.', true),
    PokeQuestion(10, 'Exeggcute has five different identities', false),
  ];

  int getQuestionNumber() {
    _questionNumber = Random().nextInt(10) + 1;
    print(_questionNumber);
    if (_questionNumberTrack.contains(_questionNumber)) {
      _questionNumber = Random().nextInt(10) + 1;
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
