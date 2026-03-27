import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:learnflutter/beginningapdevwithflutter/TrackHours/error_util.dart';
import 'package:learnflutter/beginningapdevwithflutter/TrackHours/card_util.dart';
import 'package:learnflutter/beginningapdevwithflutter/TrackHours/database.dart';

class TrackingHours extends StatefulWidget {
  @override
  _TrackingHoursState createState() => _TrackingHoursState();
}

class _TrackingHoursState extends State<TrackingHours> {
  final _myBox = Hive.box('mybox');
  TrackTimeDataBase db = TrackTimeDataBase();
  List recordHours = [];
  int _selectedIndex = 1;
  bool xValueButton = true;

  List<DateTime> recordTime = [];

  @override
  void initState() {
    if (_myBox.get("TODOLIST") == null) {
      db.createInitialData();
    } else {
      db.loadData();

      recordHours.clear();
      //db.createInitialData();
      var timeToCompare = getDateForToday();
      List recDataInit = [];

      recDataInit.addAll(db.recordTime);
      print('recDataInit');
      print('$recDataInit');

      List<DateTime> recDate = [];
      for (int m = recDataInit.length - 1; 0 <= m; m--) {
        if ((timeToCompare.year == recDataInit[m].year) &&
            (timeToCompare.month == recDataInit[m].month) &&
            (timeToCompare.day == recDataInit[m].day)) {
          recDate.add(recDataInit[m]);
          print('rec date');
          print(recDate);
        }
      }

      for (int n = recDate.length - 1; 0 <= n; n--) {
        var mHour1 = recDate[n].hour;
        var mMinutes1 = recDate[n].minute;
        String timeHourToday = '$mHour1:$mMinutes1';

        recordHours.add(timeHourToday);
      }
      print('all record hours for today');
      print(recordHours);
    }

    super.initState();
  }

  // List<DateTime> recordTime = [
  //   DateTime(2026, 3, 24, 13, 08, 19),
  //   DateTime(2026, 3, 24, 13, 08, 29)
  // ];

  List recordTimeForDay =
      []; //list to get only the time for same date from the general record list

  String getWorkedHoursForToday = '0';

  //add 2 dates in list for test
  // getTwoDays(recordTime) {
  //   DateTime yesterday2 = DateTime(2026, 3, 24, 13, 08, 19);
  //   print(yesterday2);
  //   recordTime.add(yesterday2);
  //   DateTime yesterday22 = DateTime(2026, 3, 24, 13, 08, 29);
  //   print(yesterday22);
  //   recordTime.add(yesterday22);

  //   return recordTime;
  // }

  //get date for appBar
  String getTodayDate() {
    final timeNow = DateTime.now();
    var mDay = timeNow.day;
    var mMonth = timeNow.month;
    var mYear = timeNow.year;
    String timeToday = '$mDay-$mMonth-$mYear';

    return timeToday;
  }

  //check if you are checkIn
  void createError(String showText) {
    showDialog(
      context: context,
      builder: (context) {
        return ShowError(
          textValue: showText,
          onCancel: () => Navigator.of(context).pop(),
        );
      },
    );
  }

  //get time when press button
  getDateForToday() {
    final timeNowGet = DateTime.now();
    return timeNowGet;
  }

  getAllEntriesForToday() {
    var timeToCompare1 = getDateForToday();
    List recDataInit1 = [];
    List<DateTime> recDate1 = [];
    recDataInit1.addAll(db.recordTime);
    print('recDataInit1');
    print(recDataInit1);

    for (int l = recDataInit1.length - 1; l >= 0; l--) {
      if ((timeToCompare1.year == recDataInit1[l].year) &&
          (timeToCompare1.month == recDataInit1[l].month) &&
          (timeToCompare1.day == recDataInit1[l].day)) {
        recDate1.insert(0, recDataInit1[l]);
        print('rec date');
        print(recDate1);
      }
    }
    return recDate1;
  }

  //function to take todays hours from Hive and  update the recordHours list
  // void getHoursForTodayEachRun() {
  //   List workL = [];
  //   workL.addAll(getAllEntriesForToday(recordTime));
  //   for (int n = 0; n < workL.length - 1; n++) {
  //     var mHour = workL[n].hour;
  //     var mMinutes = workL[n].minute;
  //     String timeHourToday = '$mHour:$mMinutes';
  //     //print(timeHourToday);
  //     recordHours.add(timeHourToday);
  //   }
  //   print('recordHours List when entering app');
  //   print(recordHours);
  //   //return recordHours;
  // }

  //add time in recordTime and time in list as string
  void getHoursForToday() {
    var timeReceived = getDateForToday();
    db.recordTime.add(timeReceived);
    db.updateData();

    //recordTime.add(timeReceived);
    print(
        'db.recordTime from getHoursForToday function -> list stored in Hive');
    print(db.recordTime);

    // get hours and minutes for card
    var mHour = timeReceived.hour;
    var mMinutes = timeReceived.minute;
    String timeHourToday = '$mHour:$mMinutes';
    //print(timeHourToday);
    recordHours.add(timeHourToday);
    print('All recoreded hours from today from recordHours list');
    print(recordHours);
  }

  //get true if checkin or false if checkout
  bool getIndexBool(_selectedIndex) {
    bool xValueButton2 = true;
    if (_selectedIndex % 2 == 0) {
      xValueButton2 = true;
    } else {
      xValueButton2 = false;
    }
    return xValueButton2;
  }

  //calculate worked hours in current day
  String getWorkedHours() {
    String workedHours = '';
    List workedHoursList = [];
    List<int> workedHoursToday = [];
    //List finalHoursList = [];
    int diff2 = 0;
    workedHoursList.addAll(getAllEntriesForToday());
    int hoursWorkedToday = 0;
    int restOfHoursWorkedToday = 0;
    int minutesWorkedToday = 0;

    if (workedHoursList.length < 2) {
      workedHours = '0';
    } else {
      for (int i = 1; i < workedHoursList.length; i++) {
        if (i.isOdd) {
          var diff = workedHoursList[i].difference(workedHoursList[i - 1]);
          print(diff);
          int diff1 = diff.inSeconds;
          workedHoursToday.add(diff1);
          print(diff1);
          print(workedHoursToday);
        } //end if
      } //end for
    } // end else

    //get the seconds
    for (int j = 1; j <= workedHoursToday.length; j++) {
      diff2 += workedHoursToday[j - 1];
    } //end for

    print(diff2);

    hoursWorkedToday = diff2 ~/ 3600;
    print(hoursWorkedToday);
    restOfHoursWorkedToday = diff2 % 3600;
    print(restOfHoursWorkedToday);
    minutesWorkedToday = restOfHoursWorkedToday ~/ 60;
    print(minutesWorkedToday);

    workedHours = hoursWorkedToday.toString() +
        'h ' +
        minutesWorkedToday.toString() +
        'min';
    print(workedHours);

    return workedHours;
  }

  //when button is pressed
  void _onItemTapped(int index) {
    //String woHours = '';
    setState(() {
      // int checkLength = recordTime.length;
      if (_selectedIndex == 0 && index == 0) {
        createError('You are already checkedIn');
      } else if (_selectedIndex == 1 && index == 1) {
        createError('You are allready checkedOut');
      } else {
        _selectedIndex = index;
        print(index);
        getHoursForToday();
        // recordTimeForDay = getAllEntriesForToday(db.recordTime);
        // print(recordTimeForDay); //add time in recorTime list
        // String getWorkedHoursForToday = getWorkedHours(recordTimeForDay);

        //print(getWorkedHours(recordTime));
        // final timeNowRecord = DateTime.now();
        // print(timeNowRecord);
        // recordTime.add(timeNowRecord);
        // print(recordTime);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(0xFF, 0x1F, 0x34, 0x4B),
        elevation: 20,
        centerTitle: true,
        title: Row(
          children: [
            Text(
              getTodayDate(),
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Worked Hours:',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              getWorkedHours(),
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: recordHours.length,
        itemBuilder: (contex, index) {
          return CardUtil(
            timeV: recordHours[index],
            xValue: getIndexBool(index),
            xOutIn: getIndexBool(index) ? 'CheckIn' : 'CheckOut',
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: TextStyle(
          color: Colors.deepOrangeAccent,
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelStyle: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),
        fixedColor: Color.fromARGB(0xF6, 0x6C, 0x74, 0xF1),
        unselectedItemColor: Colors.orangeAccent,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_downward,
                color: Color.fromARGB(0xF6, 0x6C, 0x74, 0xF1)),
            label: 'CheckIn',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_upward, color: Colors.orangeAccent),
            label: 'CheckOut',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
