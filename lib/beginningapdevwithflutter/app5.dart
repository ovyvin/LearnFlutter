import 'package:flutter/material.dart';

class MyApp5 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('assets/images/ked.jpg'),
            ),
            Text(
              'Cid Kagenou',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.amber,
              ),
            ),
            Text(
              'Shadows Leader',
              style: TextStyle(
                fontFamily: 'SourceCodePro',
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.5,
              ),
            ),
            Container(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Icon(
                    Icons.auto_fix_high_sharp,
                    color: Colors.teal,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Magic Level 100',
                    style: TextStyle(
                      fontFamily: ' Source Sans Pro',
                      color: Colors.teal.shade900,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
