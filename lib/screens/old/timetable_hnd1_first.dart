import 'package:flutter/material.dart';

import '../../styles/styles.dart';
import '../../widgets/day_widget.dart';

class Timetable_hnd1_first extends StatelessWidget {
  const Timetable_hnd1_first({super.key});

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
                'HND1 FIRST SEMESTER TIMETABLE',
                style: Styles.dashboardTextStyle,
              ),
            ),
            SizedBox(height: 24),
            DayWidget(
              day: 'MONDAY',
              course8to9: 'COM312',
              course9to10: 'COM312',
              course10to11: '',
              course11to12: 'COM315',
              course12to1: 'COM315',
              course1to2: 'BREAK',
              course2to3: '',
              course3to4: 'COM314',
              course4to5: 'COM314',
              course5to6: '',
            ),
            DayWidget(
              day: 'TUESDAY',
              course8to9: '',
              course9to10: '',
              course10to11: 'COM313',
              course11to12: 'COM313',
              course12to1: '',
              course1to2: 'BREAK',
              course2to3: '',
              course3to4: 'COM311',
              course4to5: 'COM311',
              course5to6: '',
            ),
            DayWidget(
              day: 'WEDNESDAY',
              course8to9: '',
              course9to10: '',
              course10to11: 'COM312',
              course11to12: 'COM312',
              course12to1: '',
              course1to2: 'BREAK',
              course2to3: '',
              course3to4: 'COM314',
              course4to5: 'COM314',
              course5to6: '',
            ),
            DayWidget(
              day: 'THURSDAY',
              course8to9: 'COM311',
              course9to10: 'COM311',
              course10to11: '',
              course11to12: '',
              course12to1: '',
              course1to2: 'BREAK',
              course2to3: '',
              course3to4: '',
              course4to5: 'COM313',
              course5to6: '',
            ),
            DayWidget(
              day: 'FRIDAY',
              course8to9: 'COM315',
              course9to10: 'COM315',
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
