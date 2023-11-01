import 'package:flutter/material.dart';

import '../styles/styles.dart';
import '../widgets/day_widget.dart';

class Timetable_nd2_second extends StatelessWidget {
  const Timetable_nd2_second({super.key});

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
                'ND2 SECOND SEMESTER TIMETABLE',
                style: Styles.dashboardTextStyle,
              ),
            ),
            SizedBox(height: 24),
            DayWidget(
              day: 'MONDAY',
              course8to9: 'COM222',
              course9to10: '',
              course10to11: 'COM226',
              course11to12: 'COM226',
              course12to1: '',
              course1to2: 'BREAK',
              course2to3: '',
              course3to4: 'COM224',
              course4to5: '',
              course5to6: '',
            ),
            DayWidget(
              day: 'TUESDAY',
              course8to9: 'COM225',
              course9to10: 'COM225',
              course10to11: '',
              course11to12: '',
              course12to1: '',
              course1to2: 'BREAK',
              course2to3: '',
              course3to4: '',
              course4to5: 'COM223',
              course5to6: 'COM223',
            ),
            DayWidget(
              day: 'WEDNESDAY',
              course8to9: 'COM222',
              course9to10: '',
              course10to11: 'COM221',
              course11to12: 'COM221',
              course12to1: '',
              course1to2: 'BREAK',
              course2to3: 'COM224',
              course3to4: 'COM224',
              course4to5: '',
              course5to6: '',
            ),
            DayWidget(
              day: 'THURSDAY',
              course8to9: 'COM223',
              course9to10: '',
              course10to11: 'COM226',
              course11to12: '',
              course12to1: '',
              course1to2: 'BREAK',
              course2to3: '',
              course3to4: 'COM225',
              course4to5: 'COM225',
              course5to6: 'COM225',
            ),
            DayWidget(
              day: 'FRIDAY',
              course8to9: 'COM221',
              course9to10: 'COM221',
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
