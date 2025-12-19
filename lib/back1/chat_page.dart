import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  Widget getChatBubble(alignment, message) {
    return Align(
      alignment: alignment,
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '$message',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/c/c8/Altja_j%C3%B5gi_Lahemaal.jpg',
              height: 50,
            ),
          ],
        ),
        margin: EdgeInsets.all(60),
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            bottomLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FunnyChat'), actions: [
        IconButton(
          onPressed: () {
            print('Icon passed');
          },
          icon: Icon(Icons.logout),
        ),
      ]),
      body: Column(
        children: [
          Flexible(
            child: ListView(
              children: [
                getChatBubble(Alignment.bottomRight, 'Hello, bi'),
                getChatBubble(Alignment.bottomLeft, 'Hello di'),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Hello world!',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      Image.network(
                        'https://upload.wikimedia.org/wikipedia/commons/c/c8/Altja_j%C3%B5gi_Lahemaal.jpg',
                        height: 50,
                      ),
                    ],
                  ),
                  margin: EdgeInsets.all(60),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            color: Colors.amberAccent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.send,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
