import 'package:flutter/material.dart';
import 'package:learnflutter/beginningapdevwithflutter/WidgetsTraining/listviewWidget1.dart';
import 'package:learnflutter/beginningapdevwithflutter/WidgetsTraining/listviewWidget2.dart';

class ListviewWidget extends StatelessWidget {
  final List _posts = ['post 1', 'post 2', 'post 3', 'post 4', 'post 5'];
  final List _pictures = ['pic 1', 'pic 2', 'pic 3', 'pic 4', 'pic 5'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 150,
            child: ListView.builder(
                itemCount: _pictures.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ListviewWidget2(
                    cText: _pictures[index],
                  );
                }),
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _posts.length,
              itemBuilder: (context, index) {
                return UselistviewWidget(
                  ftext: _posts[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
