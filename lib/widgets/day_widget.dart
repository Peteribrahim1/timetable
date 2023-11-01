import 'package:flutter/material.dart';

import '../styles/styles.dart';

class DayWidget extends StatelessWidget {
  const DayWidget({
    super.key,
    required this.day,
    required this.course8to9,
    required this.course9to10,
    required this.course10to11,
    required this.course11to12,
    required this.course12to1,
    required this.course1to2,
    required this.course2to3,
    required this.course3to4,
    required this.course4to5,
    required this.course5to6,
  });

  final String day;
  final String course8to9;
  final String course9to10;
  final String course10to11;
  final String course11to12;
  final String course12to1;
  final String course1to2;
  final String course2to3;
  final String course3to4;
  final String course4to5;
  final String course5to6;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          day,
          style: Styles.dashboardTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '08:00 AM - 09:00 AM',
              style: Styles.dashboardTextStyle,
            ),
            Text(
              course8to9,
              style: Styles.dashboardTextStyle,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '09:00 AM - 10:00 AM',
              style: Styles.dashboardTextStyle,
            ),
            Text(
              course9to10,
              style: Styles.dashboardTextStyle,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '10:00 AM - 11:00 AM',
              style: Styles.dashboardTextStyle,
            ),
            Text(
              course10to11,
              style: Styles.dashboardTextStyle,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '11:00 AM - 12:00 PM',
              style: Styles.dashboardTextStyle,
            ),
            Text(
              course11to12,
              style: Styles.dashboardTextStyle,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '12:00 PM - 01:00 PM',
              style: Styles.dashboardTextStyle,
            ),
            Text(
              course12to1,
              style: Styles.dashboardTextStyle,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '01:00 PM - 02:00 PM',
              style: Styles.dashboardTextStyle,
            ),
            Text(
              course1to2,
              style: Styles.dashboardTextStyle,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '02:00 PM - 03:00 PM',
              style: Styles.dashboardTextStyle,
            ),
            Text(
              course2to3,
              style: Styles.dashboardTextStyle,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '03:00 PM - 04:00 PM',
              style: Styles.dashboardTextStyle,
            ),
            Text(
              course3to4,
              style: Styles.dashboardTextStyle,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '04:00 PM - 05:00 PM',
              style: Styles.dashboardTextStyle,
            ),
            Text(
              course4to5,
              style: Styles.dashboardTextStyle,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '05:00 PM - 06:00 PM',
              style: Styles.dashboardTextStyle,
            ),
            Text(
              course5to6,
              style: Styles.dashboardTextStyle,
            ),
          ],
        ),
        const Divider(
          color: Colors.black,
          thickness: 2,
        ),
      ],
    );
  }
}
