import 'package:flutter/material.dart';
import 'package:learnflutter/beginningapdevwithflutter/SiteCreation/widgets/navigation_bar/navigation_bar.dart';
import 'package:learnflutter/beginningapdevwithflutter/SiteCreation/widgets/centered_view/centered_view.dart';
import 'package:learnflutter/beginningapdevwithflutter/SiteCreation/widgets/course_details/course_details.dart';
import 'package:learnflutter/beginningapdevwithflutter/SiteCreation/widgets/call_to_action/call_to_action.dart';
import 'package:learnflutter/beginningapdevwithflutter/SiteCreation/views/home/home_content_desktop.dart';
import 'package:learnflutter/beginningapdevwithflutter/SiteCreation/views/home/home_content_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

@override
class HomeView extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          children: [
            NavigationBarr(),
            Expanded(
              child: ScreenTypeLayout(
                mobile: HomeContentMobile(),
                desktop: HomeConntentDesktop(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
