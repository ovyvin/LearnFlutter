import 'dart:html';

import 'package:flutter/material.dart';
import 'package:learnflutter/beginningapdevwithflutter/Destini/story.dart';

StoryBrain storyBrain = new StoryBrain();

class StoryPage extends StatefulWidget {
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('/assets/images/background.png'),
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    storyBrain.getStory(),
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: TextButton(
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.red),
                  ),
                  child: Text(
                    storyBrain.getChoice1(),
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    storyBrain.nextStory(1);
                  },
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                flex: 2,
                child: TextButton(
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.blue),
                  ),
                  child: Text(
                    storyBrain.getChoice2(),
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    storyBrain.nextStory(2);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StoryBrain {
  int storyNumber = 0;
  List<Story> _storyData = [
    Story(
        storyTitle:
            'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
        choice1: 'I\'ll hop in. Thanks for the help!',
        choice2: 'Better ask him if he\'s a murderer first.'),
    Story(
        storyTitle: 'He nods slowly, unphased by the question.',
        choice1: 'At least he\'s honest. I\'ll climb in.',
        choice2: 'Wait, I know how to change a tire.'),
    Story(
        storyTitle:
            'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
        choice1: 'I love Elton John! Hand him the cassette tape.',
        choice2: 'It\'s him or me! You take the knife and stab him.'),
    Story(
        storyTitle:
            'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
            'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
            'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
        choice1: 'Restart',
        choice2: '')
  ];

  getStory() {
    return _storyData[0].storyTitle;
  }

  getChoice1() {
    return _storyData[0].choice1;
  }

  getChoice2() {
    return _storyData[0].choice2;
  }

  restart() {
    storyNumber = 0;
  }

  nextStory(int choiseNumber) {
    if (choiseNumber == 1 && storyNumber == 0) {
      storyNumber = 2;
    } else if (choiseNumber == 2 && storyNumber == 0) {
      storyNumber = 1;
    } else if (choiseNumber == 1 && storyNumber == 1) {
      storyNumber = 2;
    } else if (choiseNumber == 2 && storyNumber == 1) {
      storyNumber = 3;
    } else if (choiseNumber == 1 && storyNumber == 2) {
      storyNumber = 4;
    } else if (choiseNumber == 2 && storyNumber == 2) {
      storyNumber = 4;
    } else if (storyNumber == 3 || storyNumber == 4 || storyNumber == 5) {
      restart();
    }
  }
}
