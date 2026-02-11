import 'package:flutter/material.dart';

class PokeQuiz extends StatefulWidget {
  @override
  _PokeQuizState createState() => _PokeQuizState();
}

class _PokeQuizState extends State<PokeQuiz> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: Image.asset('/assets/images/poke1.png'),
          ),
        ),
        Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
              child: Text(
                'Here will be the question',
                style: TextStyle(
                  color: Colors.blue,
                  fontFamily: 'Pacifico',
                  fontSize: 20.0,
                ),
              ),
            )),

        //Expanded(),
      ],
    );
  }
}
