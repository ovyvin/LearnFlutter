import 'package:flutter/material.dart';

class CardUtil extends StatelessWidget {
  String timeV;
  CardUtil({this.timeV = ''});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
          elevation: 4,
          margin: EdgeInsets.all(10),
          color: Color.fromARGB(0xF6, 0xFC, 0x5B, 0x19),
          child: ListTile(
            leading: Text(''),
            title: Text('CheckOut'),
            titleTextStyle: TextStyle(
              color: Color.fromARGB(0xF0, 0x1F, 0x34, 0x4B),
              fontSize: 20,
            ),
            subtitle: Text('$timeV'),
            subtitleTextStyle: TextStyle(
              color: Color.fromARGB(0xF0, 0x1F, 0x34, 0x4B),
              fontSize: 18,
              fontWeight: FontWeight.w200,
            ),
            trailing: Icon(
              Icons.arrow_upward,
              color: Color.fromARGB(0xFF, 0xFE, 0xC3, 0x31),
              size: 30,
            ),
            minLeadingWidth: 145,
          )),
    );
  }
}
