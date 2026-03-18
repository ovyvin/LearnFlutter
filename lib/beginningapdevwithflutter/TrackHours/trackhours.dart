import 'package:flutter/material.dart';
import 'package:learnflutter/beginningapdevwithflutter/TrackHours/error_util.dart';
import 'package:learnflutter/beginningapdevwithflutter/TrackHours/card_util.dart';

class TrackingHours extends StatefulWidget {
  @override
  _TrackingHoursState createState() => _TrackingHoursState();
}

class _TrackingHoursState extends State<TrackingHours> {
  int _selectedIndex = 1;
  bool xValueButton = true;
  List recordTime = [];
  List recordHours = [];
  List<int> workedHoursToday = [];

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

  //add time in list as string
  void getHoursForToday() {
    var timeReceived = getDateForToday();
    recordTime.add(timeReceived);
    print(recordTime);

    var mHour = timeReceived.hour;
    var mMinutes = timeReceived.minute;

    String timeHourToday = '$mHour:$mMinutes';
    print(timeHourToday);
    recordHours.add(timeHourToday);
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

  void getWorkedHours(List recordTime1) {
    String workedHours = '';
    List workedHoursList = [];
    //List finalHoursList = [];
    int diff2 = 0;
    workedHoursList.addAll(recordTime1);

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
        }

        //diff2 = diff2 + diff1;
      }
      // int ab = workedHoursList.length;
      // String a = '$ab';
      // workedHours = '$a';
    }
    print('$workedHours');
    //return workedHours;
  }

  //when button is pressed
  void _onItemTapped(int index) {
    String woHours = '';
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
        getWorkedHours(recordTime);
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
              '0',
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
