import 'package:flutter/material.dart';

import '../styles/styles.dart';
import '../widgets/day_widget.dart';

class Timetable_hnd2_second extends StatelessWidget {
  const Timetable_hnd2_second({super.key});

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
                'HND2 SECOND SEMESTER TIMETABLE',
                style: Styles.dashboardTextStyle,
              ),
            ),
            SizedBox(height: 24),
            DayWidget(
              day: 'MONDAY',
              course8to9: 'COM424',
              course9to10: '',
              course10to11: 'COM422',
              course11to12: 'COM422',
              course12to1: '',
              course1to2: 'BREAK',
              course2to3: '',
              course3to4: 'COM426',
              course4to5: 'COM426',
              course5to6: '',
            ),
            DayWidget(
              day: 'TUESDAY',
              course8to9: 'COM423',
              course9to10: 'COM423',
              course10to11: '',
              course11to12: '',
              course12to1: '',
              course1to2: 'BREAK',
              course2to3: '',
              course3to4: 'COM422',
              course4to5: 'COM422',
              course5to6: 'COM422',
            ),
            DayWidget(
              day: 'WEDNESDAY',
              course8to9: '',
              course9to10: 'COM425',
              course10to11: '',
              course11to12: '',
              course12to1: '',
              course1to2: 'BREAK',
              course2to3: '',
              course3to4: 'COM426',
              course4to5: 'COM426',
              course5to6: '',
            ),
            DayWidget(
              day: 'THURSDAY',
              course8to9: '',
              course9to10: '',
              course10to11: 'COM424',
              course11to12: '',
              course12to1: '',
              course1to2: 'BREAK',
              course2to3: '',
              course3to4: 'COM423',
              course4to5: 'COM423',
              course5to6: 'COM423',
            ),
            DayWidget(
              day: 'FRIDAY',
              course8to9: 'COM425',
              course9to10: '',
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
