import 'package:flutter/material.dart';

class PokeQuiz extends StatefulWidget {
  @override
  _PokeQuizState createState() => _PokeQuizState();
}

class _PokeQuizState extends State<PokeQuiz> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: Image.asset('/assets/images/poke1.png'),
          ),
        ),
        Expanded(
            //flex: 2,
            child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'Here will be the question',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.blue,
              fontFamily: 'Pacifico',
              fontSize: 25.0,
            ),
          ),
        )),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            child: TextButton(
              onPressed: () {},
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
              onPressed: () {},
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
        //Expanded(),
      ],
    );
  }
}
