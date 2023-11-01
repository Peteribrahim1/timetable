import 'package:flutter/material.dart';

import '../styles/styles.dart';
import '../widgets/day_widget.dart';

class Timetable_nd2_first extends StatelessWidget {
  const Timetable_nd2_first({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'COMPUTER SCIENCE',
          style: Styles.appBarTextStyle,
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: const SafeArea(
          child: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 24),
            Center(
              child: Text(
                'ND2 FIRST SEMESTER TIMETABLE',
                style: Styles.dashboardTextStyle,
              ),
            ),
            SizedBox(height: 24),
            DayWidget(
              day: 'MONDAY',
              course8to9: 'COM214',
              course9to10: '',
              course10to11: 'COM212',
              course11to12: '',
              course12to1: '',
              course1to2: 'BREAK',
              course2to3: '',
              course3to4: 'COM211',
              course4to5: 'COM211',
              course5to6: '',
            ),
            DayWidget(
              day: 'TUESDAY',
              course8to9: '',
              course9to10: 'COM211',
              course10to11: 'COM211',
              course11to12: '',
              course12to1: '',
              course1to2: 'BREAK',
              course2to3: '',
              course3to4: '',
              course4to5: 'COM216',
              course5to6: '',
            ),
            DayWidget(
              day: 'WEDNESDAY',
              course8to9: 'COM212',
              course9to10: '',
              course10to11: 'COM214',
              course11to12: 'COM214',
              course12to1: '',
              course1to2: 'BREAK',
              course2to3: '',
              course3to4: 'COM213',
              course4to5: 'COM213',
              course5to6: '',
            ),
            DayWidget(
              day: 'THURSDAY',
              course8to9: 'COM216',
              course9to10: '',
              course10to11: 'COM215',
              course11to12: 'COM215',
              course12to1: '',
              course1to2: 'BREAK',
              course2to3: '',
              course3to4: 'COM211',
              course4to5: 'COM211',
              course5to6: '',
            ),
            DayWidget(
              day: 'FRIDAY',
              course8to9: 'COM215',
              course9to10: 'COM215',
              course10to11: '',
              course11to12: '',
              course12to1: '',
              course1to2: 'BREAK',
              course2to3: '',
              course3to4: '',
              course4to5: '',
              course5to6: '',
            ),
          ],
        ),
      )),
    );
  }
}
