import 'package:hive_flutter/hive_flutter.dart';
import 'package:learnflutter/beginningapdevwithflutter/TrackHours/trackhours.dart';

class TrackTimeDataBase {
  List recordTime = [];

  //reference box
  final _myBox = Hive.box('mybox');

  //run this when first openning the app
  void createInitialData() {
    // final firstUse1 = DateTime.now();
    // trackOverallTime.add(firstUse1);
    // final firstUse2 = DateTime.now();
    // trackOverallTime.add(firstUse2);

    recordTime = [
      DateTime(2026, 3, 24, 13, 08, 19),
      DateTime(2026, 3, 24, 13, 08, 29)
    ];
  }

  //load data from database
  void loadData() {
    // recordTime = [
    //   DateTime(2026, 3, 24, 13, 08, 19),
    //   DateTime(2026, 3, 24, 13, 08, 29)
    // ];
    recordTime = _myBox.get("TODOLIST");
    // // print('load data');
    // print(recordTime);
    // // recordHours.clear();
    //getHoursForTodayEachRun();
    //
  }

  //update data
  void updateData() {
    _myBox.put("TODOLIST", recordTime);
  }
}
