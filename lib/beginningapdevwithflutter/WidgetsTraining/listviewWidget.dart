import 'package:flutter/material.dart';
import 'package:learnflutter/beginningapdevwithflutter/WidgetsTraining/listviewWidget1.dart';

class ListviewWidget extends StatelessWidget {
  final List _posts = ['post 1', 'post 2', 'post 3', 'post 4', 'post 5'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _posts.length,
        itemBuilder: (context, index) {
          return UselistviewWidget();
        },
      ),
    );
  }
}
