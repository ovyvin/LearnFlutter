import 'package:flutter/material.dart';

class CardUtil extends StatelessWidget {
  String timeV;
  bool xValue = true;
  String xOutIn = '';
  CardUtil({this.timeV = '', this.xValue = true, this.xOutIn = ''});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
          elevation: 4,
          margin: EdgeInsets.all(5),
          color: xValue
              ? Color.fromARGB(0xF6, 0x6C, 0x74, 0xF1)
              : Color.fromARGB(0xF6, 0xFC, 0x5B, 0x19),
          child: ListTile(
            leading: Text(''),
            title: Text('$xOutIn'),
            titleTextStyle: TextStyle(
              color: xValue
                  ? Colors.white
                  : Color.fromARGB(0xF0, 0x1F, 0x34, 0x4B),
              fontSize: 18,
            ),
            subtitle: Text('$timeV'),
            subtitleTextStyle: TextStyle(
              color: xValue
                  ? Colors.white
                  : Color.fromARGB(0xF0, 0x1F, 0x34, 0x4B),
              fontSize: 16,
              fontWeight: FontWeight.w200,
            ),
            trailing: Icon(
              xValue ? Icons.arrow_downward : Icons.arrow_upward,
              color: xValue
                  ? Color.fromARGB(0xF0, 0x1F, 0x34, 0x4B)
                  : Color.fromARGB(0xFF, 0xFE, 0xC3, 0x31),
              size: 30,
            ),
            minLeadingWidth: xValue ? 30 : 145,
          )),
    );
  }
}
