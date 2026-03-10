import 'package:flutter/material.dart';

class TrackingHours extends StatefulWidget {
  @override
  _TrackingHoursState createState() => _TrackingHoursState();
}

class _TrackingHoursState extends State<TrackingHours> {
  int _selectedIndex = 0;
  List recordTime = [];

  void _onItemTapped(int index) {
    setState(() {
      // int checkLength = recordTime.length;
      if (_selectedIndex == 0 && index == 0) {
      } else if (_selectedIndex == 1 && index == 1) {
      } else {
        _selectedIndex = index;
        print(index);
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
        title: Text(
          '12-10-2025  Worked Time: 4h',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
        ),
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
