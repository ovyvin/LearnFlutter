import 'package:hive_flutter/hive_flutter.dart';

class TrackTimeDataBase {
  List trackOverallTime = [];

  //reference box
  final _myBox = Hive.box('mybox');

  //run this when first openning the app
  void createInitialData() {
    final firstUse1 = DateTime.now();
    trackOverallTime.add(firstUse1);
    final firstUse2 = DateTime.now();
    trackOverallTime.add(firstUse2);
  }

  //load data from database
  void loadData() {
    trackOverallTime = _myBox.get("TODOLIST");
  }

  //update data
  void updateData() {
    _myBox.put("TODOLIST", trackOverallTime);
  }
}
