import 'package:flutter/material.dart';
import 'package:learnflutter/beginningapdevwithflutter/SiteCreation/widgets/navigation_bar/navbar_logo.dart';
import 'package:learnflutter/beginningapdevwithflutter/SiteCreation/widgets/navigation_bar/navbar_item.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NavBarLogo(),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                NavBarItem('Episodes'),
                SizedBox(
                  width: 60,
                ),
                NavBarItem('About'),
              ],
            ),
          ],
        ));
  }
} // end NavigationBar
