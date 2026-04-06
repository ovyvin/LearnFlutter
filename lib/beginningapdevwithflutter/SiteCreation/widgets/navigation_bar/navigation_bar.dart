import 'package:flutter/material.dart';

class NavigationBarr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
                height: 80,
                width: 150,
                child: Image.asset('assets/images/logo.png',
                    fit: BoxFit.scaleDown)),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                _NavBarItem('Episodes'),
                SizedBox(
                  width: 60,
                ),
                _NavBarItem('About'),
              ],
            ),
          ],
        ));
  }
} // end NavigationBar

class _NavBarItem extends StatelessWidget {
  final String title;
  const _NavBarItem(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 18,
      ),
    );
  }
} // end _NavBarItem
