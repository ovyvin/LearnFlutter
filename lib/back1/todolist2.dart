import 'package:flutter/material.dart';
import 'package:learnflutter/todolist2.dart';

class ToDoList2 extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;

  ToDoList2({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
  });

  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 12, right: 12, top: 12),
      child: Container(
        child: Row(
          children: [
            Checkbox(
              value: taskCompleted,
              onChanged: onChanged,
              activeColor: Colors.blue,
            ),
            Text(
              taskName,
              style: TextStyle(
                decoration: taskCompleted
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
              ),
            ),
          ],
        ),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
