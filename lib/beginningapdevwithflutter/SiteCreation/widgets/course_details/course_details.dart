import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CourseDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      var textAlignment =
          sizingInformation.deviceScreenType == DeviceScreenType.Desktop
              ? TextAlign.left
              : TextAlign.center;
      double titleSize =
          sizingInformation.deviceScreenType == DeviceScreenType.Mobile
              ? 80
              : 50;
      double descriptionSize =
          sizingInformation.deviceScreenType == DeviceScreenType.Mobile
              ? 16
              : 21;

      return Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'FLUTTER WEB. \nTHE BASICS',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                height: 0.9,
                fontSize: titleSize,
              ),
              textAlign: textAlignment,
            ),
            SizedBox(
              height: descriptionSize,
            ),
            Text(
              'In this course we will go over the basics of using Flutter Web for website developmnet.Topics will include Responsive Layout, Delpoying, Font Changes and more.',
              style: TextStyle(
                fontSize: descriptionSize,
                height: 1.7,
              ),
            )
          ],
        ),
      );
    });
  }
}
