import 'package:flutter/material.dart';

import '../styles/styles.dart';
import '../widgets/day_widget.dart';

class Timetable_hnd1_second extends StatelessWidget {
  const Timetable_hnd1_second({super.key});

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
                'HND1 SECOND SEMESTER TIMETABLE',
                style: Styles.dashboardTextStyle,
              ),
            ),
            SizedBox(height: 24),
            DayWidget(
              day: 'MONDAY',
              course8to9: 'COM325',
              course9to10: '',
              course10to11: 'COM327',
              course11to12: 'COM327',
              course12to1: '',
              course1to2: 'BREAK',
              course2to3: '',
              course3to4: 'COM322',
              course4to5: 'COM322',
              course5to6: '',
            ),
            DayWidget(
              day: 'TUESDAY',
              course8to9: 'COM323',
              course9to10: 'COM323',
              course10to11: '',
              course11to12: 'COM321',
              course12to1: '',
              course1to2: 'BREAK',
              course2to3: 'COM326',
              course3to4: 'COM326',
              course4to5: '',
              course5to6: '',
            ),
            DayWidget(
              day: 'WEDNESDAY',
              course8to9: 'COM321',
              course9to10: 'COM321',
              course10to11: 'COM324',
              course11to12: 'COM324',
              course12to1: 'COM324',
              course1to2: 'BREAK',
              course2to3: '',
              course3to4: 'COM322',
              course4to5: 'COM322',
              course5to6: '',
            ),
            DayWidget(
              day: 'THURSDAY',
              course8to9: 'COM324',
              course9to10: 'COM324',
              course10to11: '',
              course11to12: 'COM323',
              course12to1: 'COM323',
              course1to2: 'BREAK',
              course2to3: '',
              course3to4: '',
              course4to5: 'COM325',
              course5to6: '',
            ),
            DayWidget(
              day: 'FRIDAY',
              course8to9: 'COM326',
              course9to10: 'COM326',
              course10to11: 'COM327',
              course11to12: 'COM327',
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
