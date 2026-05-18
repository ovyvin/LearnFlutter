import 'package:flutter/material.dart';

class StoryPage extends StatefulWidget {
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 40, horizontal: 25),
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('/assets/images/background.png'),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SafeArea(
              child: SafeArea(
                child: Expanded(
                  flex: 12,
                  child: Center(
                    child: Text('AA'),
                  ),
                ),
              ),
            ),
            SafeArea(
              child: Expanded(
                flex: 2,
                child: TextButton(
                  child: Text('Choice1'),
                  onPressed: () {},
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SafeArea(
              child: Expanded(
                flex: 2,
                child: TextButton(
                  child: Text('Choise2'),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
