import 'package:flutter/material.dart';

import '../styles/styles.dart';
import '../widgets/day_widget.dart';

class Timetable_nd1_first extends StatefulWidget {
  const Timetable_nd1_first({super.key});

  @override
  State<Timetable_nd1_first> createState() => _Timetable_nd1_firstState();
}

class _Timetable_nd1_firstState extends State<Timetable_nd1_first> {
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
                'ND1 FIRST SEMESTER TIMETABLE',
                style: Styles.dashboardTextStyle,
              ),
            ),
            SizedBox(height: 24),
            DayWidget(
              day: 'MONDAY',
              course8to9: 'COM115',
              course9to10: 'COM115',
              course10to11: '',
              course11to12: '',
              course12to1: 'COM112',
              course1to2: 'BREAK',
              course2to3: '',
              course3to4: '',
              course4to5: 'COM114',
              course5to6: '',
            ),
            DayWidget(
              day: 'TUESDAY',
              course8to9: '',
              course9to10: 'COM113',
              course10to11: 'COM113',
              course11to12: 'COM111',
              course12to1: '',
              course1to2: 'BREAK',
              course2to3: '',
              course3to4: '',
              course4to5: 'COM115',
              course5to6: 'COM115',
            ),
            DayWidget(
              day: 'WEDNESDAY',
              course8to9: 'COM114',
              course9to10: '',
              course10to11: 'COM113',
              course11to12: '',
              course12to1: '',
              course1to2: 'BREAK',
              course2to3: '',
              course3to4: '',
              course4to5: 'COM111',
              course5to6: '',
            ),
            DayWidget(
              day: 'THURSDAY',
              course8to9: 'COM111',
              course9to10: 'COM111',
              course10to11: '',
              course11to12: '',
              course12to1: '',
              course1to2: 'BREAK',
              course2to3: '',
              course3to4: '',
              course4to5: 'COM112',
              course5to6: 'COM112',
            ),
            DayWidget(
              day: 'FRIDAY',
              course8to9: '',
              course9to10: 'COM113',
              course10to11: '',
              course11to12: 'COM112',
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
