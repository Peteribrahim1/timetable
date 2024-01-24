import 'package:flutter/material.dart';

import '../../styles/styles.dart';
import '../../widgets/day_widget.dart';

class Timetable_nd1_second extends StatelessWidget {
  const Timetable_nd1_second({super.key});

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
                'SECOND SEMESTER TIMETABLE',
                style: Styles.dashboardTextStyle,
              ),
            ),
            SizedBox(height: 24),
            DayWidget(
              day: 'MONDAY',
              course8to9: 'COM124',
              course9to10: '',
              course10to11: 'COM121',
              course11to12: 'COM121',
              course12to1: '',
              course1to2: 'BREAK',
              course2to3: '',
              course3to4: 'COM125',
              course4to5: '',
              course5to6: '',
            ),
            DayWidget(
              day: 'TUESDAY',
              course8to9: '',
              course9to10: '',
              course10to11: 'COM122',
              course11to12: 'COM122',
              course12to1: '',
              course1to2: 'BREAK',
              course2to3: '',
              course3to4: '',
              course4to5: 'COM126',
              course5to6: 'COM126',
            ),
            DayWidget(
              day: 'WEDNESDAY',
              course8to9: 'COM125',
              course9to10: 'COM125',
              course10to11: '',
              course11to12: 'COM126',
              course12to1: 'COM126',
              course1to2: 'BREAK',
              course2to3: '',
              course3to4: 'COM123',
              course4to5: 'COM123',
              course5to6: '',
            ),
            DayWidget(
              day: 'THURSDAY',
              course8to9: 'COM124',
              course9to10: 'COM124',
              course10to11: 'COM121',
              course11to12: 'COM121',
              course12to1: '',
              course1to2: 'BREAK',
              course2to3: '',
              course3to4: '',
              course4to5: 'COM122',
              course5to6: '',
            ),
            DayWidget(
              day: 'FRIDAY',
              course8to9: 'COM123',
              course9to10: 'COM123',
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
