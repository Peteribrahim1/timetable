import 'package:flutter/material.dart';

import '../styles/styles.dart';
import '../widgets/day_widget.dart';

class Timetable_hnd2_first extends StatelessWidget {
  const Timetable_hnd2_first({super.key});

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
                'HND2 FIRST SEMESTER TIMETABLE',
                style: Styles.dashboardTextStyle,
              ),
            ),
            SizedBox(height: 24),
            DayWidget(
              day: 'MONDAY',
              course8to9: 'COM414',
              course9to10: 'COM414',
              course10to11: '',
              course11to12: '',
              course12to1: '',
              course1to2: 'BREAK',
              course2to3: '',
              course3to4: 'COM411',
              course4to5: 'COM411',
              course5to6: '',
            ),
            DayWidget(
              day: 'TUESDAY',
              course8to9: 'COM412',
              course9to10: 'COM412',
              course10to11: '',
              course11to12: 'COM415',
              course12to1: 'COM415',
              course1to2: 'BREAK',
              course2to3: '',
              course3to4: 'COM413',
              course4to5: 'COM413',
              course5to6: '',
            ),
            DayWidget(
              day: 'WEDNESDAY',
              course8to9: '',
              course9to10: 'COM414',
              course10to11: 'COM414',
              course11to12: '',
              course12to1: '',
              course1to2: 'BREAK',
              course2to3: '',
              course3to4: 'COM415',
              course4to5: 'COM415',
              course5to6: 'COM415',
            ),
            DayWidget(
              day: 'THURSDAY',
              course8to9: '',
              course9to10: 'COM412',
              course10to11: 'COM412',
              course11to12: '',
              course12to1: '',
              course1to2: 'BREAK',
              course2to3: '',
              course3to4: 'COM411',
              course4to5: 'COM411',
              course5to6: 'COM411',
            ),
            DayWidget(
              day: 'FRIDAY',
              course8to9: 'COM413',
              course9to10: 'COM413',
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
