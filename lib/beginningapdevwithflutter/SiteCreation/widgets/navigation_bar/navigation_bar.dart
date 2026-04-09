import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:learnflutter/beginningapdevwithflutter/SiteCreation/widgets/navigation_bar/navigation_bar_tablet_desktop.dart';
import 'package:learnflutter/beginningapdevwithflutter/SiteCreation/widgets/navigation_bar/navigation_bar_mobile.dart';

class NavigationBarr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavigationBarMobile(),
      tablet: NavigationBarTabletDesktop(),
    );
  }
} // end NavigationBar

// end _NavBarItem
