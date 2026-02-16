import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveLearn extends StatefulWidget {
  @override
  _HiveLearnState createState() => _HiveLearnState();
}

class _HiveLearnState extends State<HiveLearn> {
  //open box
  final _mybox = Hive.box('myBox');

  //read data
  void readData() {
    print(_mybox.get(1));
  }

  //write data
  void writeData() {
    _mybox.put(1, 'text');
    print(_mybox.get(1));
  }

  //delete data
  void deleteData() {}

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextButton(
            onPressed: () {
              readData();
            },
            style: const ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.green),
            ),
            child: Text(
              'Read',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextButton(
            onPressed: () {
              writeData();
            },
            style: const ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.purple),
            ),
            child: Text(
              'Write',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextButton(
            onPressed: () {},
            style: const ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(
                Colors.red,
              ),
            ),
            child: Text(
              'Delete',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
