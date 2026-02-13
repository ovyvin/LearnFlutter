import 'package:flutter/material.dart';
import 'package:learnflutter/beginningapdevwithflutter/PokeApp/pokeQuestionLib.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

PokeQuestionLib pokeQ = PokeQuestionLib();

class PokeQuiz extends StatefulWidget {
  @override
  _PokeQuizState createState() => _PokeQuizState();
}

class _PokeQuizState extends State<PokeQuiz> {
  List<Icon> scoreKeeper = [];
  void checkAnswerNow(bool userPickedAnswer) {
    bool correctAnswerUser = pokeQ.getQuestionCorrectAnswer();

    setState(() {
      if (pokeQ.isFinished() == true) {
        Alert(
          context: context,
          title: 'Finished!',
          desc: 'You won!',
        ).show();

        pokeQ.reset();
        scoreKeeper = [];
      } else {
        if (userPickedAnswer == correctAnswerUser) {
          scoreKeeper.add(Icon(
            Icons.check,
            color: Colors.green,
          ));
        } else {
          scoreKeeper.add(Icon(
            Icons.close,
            color: Colors.red,
          ));
        }
        pokeQ.getQuestionNumber();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: Image.asset('/assets/images/poke' +
                pokeQ.getImageNumber().toString() +
                '.png'),
          ),
        ),
        Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                pokeQ.getQuestion(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blue,
                  fontFamily: 'Pacifico',
                  fontSize: 20.0,
                ),
              ),
            )),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            child: TextButton(
              onPressed: () {
                checkAnswerNow(true);
              },
              style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.green),
              ),
              child: Text(
                'True',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {
                checkAnswerNow(false);
              },
              style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.red),
              ),
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: scoreKeeper,
            ),
          ),
        ),
      ],
    );
  }
}
