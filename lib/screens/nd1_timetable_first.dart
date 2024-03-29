import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';
import 'package:timetable/screens/printabledata_nd1f.dart';
import 'package:timetable/screens/savepdfbtn.dart';

import '../styles/styles.dart';
import '../widgets/day_widget.dart';
import 'package:pdf/widgets.dart' as pw;

class Nd1Timetable_first extends StatefulWidget {
  const Nd1Timetable_first({super.key});

  @override
  State<Nd1Timetable_first> createState() => _Nd1Timetable_firstState();
}

class _Nd1Timetable_firstState extends State<Nd1Timetable_first> {
  String course1 = '';
  String course2 = '';
  String course3 = '';
  String course4 = '';
  String course5 = '';
  String course6 = '';
  String course7 = '';
  String course8 = '';
  String course9 = '';
  String course10 = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  void fetchData() async {
    final snap = await FirebaseFirestore.instance.collection('ND1first').get();
    print(snap.docs[0]['Course']);

    final snap2 = snap.docs
        .where((element) =>
            element["uid"] == FirebaseAuth.instance.currentUser?.uid)
        .toList();
    print('snap2 ${snap2.length}');
    print('snap ${snap.docs.length}');
    setState(() {
      if (snap2.length == 1) {
        course1 = snap2[0]['Course'];
      } else if (snap2.length == 2) {
        course1 = snap2[0]['Course'];
        course2 = snap2[1]['Course'];
      } else if (snap2.length == 3) {
        course1 = snap2[0]['Course'];
        course2 = snap2[1]['Course'];
        course3 = snap2[2]['Course'];
      } else if (snap2.length == 4) {
        course1 = snap2[0]['Course'];
        course2 = snap2[1]['Course'];
        course3 = snap2[2]['Course'];
        course4 = snap2[3]['Course'];
      } else if (snap2.length == 5) {
        course1 = snap2[0]['Course'];
        course2 = snap2[1]['Course'];
        course3 = snap2[2]['Course'];
        course4 = snap2[3]['Course'];
        course5 = snap2[4]['Course'];
      } else if (snap2.length == 6) {
        course1 = snap2[0]['Course'];
        course2 = snap2[1]['Course'];
        course3 = snap2[2]['Course'];
        course4 = snap2[3]['Course'];
        course5 = snap2[4]['Course'];
        course6 = snap2[5]['Course'];
      } else if (snap2.length == 7) {
        course1 = snap2[0]['Course'];
        course2 = snap2[1]['Course'];
        course3 = snap2[2]['Course'];
        course4 = snap2[3]['Course'];
        course5 = snap2[4]['Course'];
        course6 = snap2[5]['Course'];
        course7 = snap2[6]['Course'];
      } else if (snap2.length == 8) {
        course1 = snap2[0]['Course'];
        course2 = snap2[1]['Course'];
        course3 = snap2[2]['Course'];
        course4 = snap2[3]['Course'];
        course5 = snap2[4]['Course'];
        course6 = snap2[5]['Course'];
        course7 = snap2[6]['Course'];
        course8 = snap2[7]['Course'];
      } else if (snap2.length == 9) {
        course1 = snap2[0]['Course'];
        course2 = snap2[1]['Course'];
        course3 = snap2[2]['Course'];
        course4 = snap2[3]['Course'];
        course5 = snap2[4]['Course'];
        course6 = snap2[5]['Course'];
        course7 = snap2[6]['Course'];
        course8 = snap2[7]['Course'];
        course9 = snap2[8]['Course'];
      } else if (snap2.length == 10) {
        course1 = snap2[0]['Course'];
        course2 = snap2[1]['Course'];
        course3 = snap2[2]['Course'];
        course4 = snap2[3]['Course'];
        course5 = snap2[4]['Course'];
        course6 = snap2[5]['Course'];
        course7 = snap2[6]['Course'];
        course8 = snap2[7]['Course'];
        course9 = snap2[8]['Course'];
        course10 = snap2[9]['Course'];
      }
    });
  }

  final currentUser = FirebaseAuth.instance.currentUser;

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
      body: SafeArea(
          child: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            const Center(
              child: Text(
                '100L FIRST SEMESTER TIMETABLE',
                style: Styles.dashboardTextStyle,
              ),
            ),
            const SizedBox(height: 24),
            DayWidget(
              day: 'MONDAY',
              course8to9: course1,
              course9to10: course1,
              course10to11: '',
              course11to12: course3,
              course12to1: '',
              course1to2: 'BREAK',
              course2to3: '',
              course3to4: course2,
              course4to5: course7,
              course5to6: course10,
            ),
            DayWidget(
              day: 'TUESDAY',
              course8to9: course2,
              course9to10: course4,
              course10to11: course4,
              course11to12: '',
              course12to1: course3,
              course1to2: 'BREAK',
              course2to3: '',
              course3to4: course5,
              course4to5: course5,
              course5to6: course9,
            ),
            DayWidget(
              day: 'WEDNESDAY',
              course8to9: course7,
              course9to10: course5,
              course10to11: course8,
              course11to12: course1,
              course12to1: '',
              course1to2: 'BREAK',
              course2to3: '',
              course3to4: course4,
              course4to5: course3,
              course5to6: course3,
            ),
            DayWidget(
              day: 'THURSDAY',
              course8to9: course2,
              course9to10: course6,
              course10to11: course10,
              course11to12: course9,
              course12to1: '',
              course1to2: 'BREAK',
              course2to3: '',
              course3to4: '',
              course4to5: course8,
              course5to6: course8,
            ),
            DayWidget(
              day: 'FRIDAY',
              course8to9: course5,
              course9to10: course4,
              course10to11: course6,
              course11to12: course1,
              course12to1: '',
              course1to2: 'BREAK',
              course2to3: course10,
              course3to4: course7,
              course4to5: course7,
              course5to6: '',
            ),
            const SizedBox(
              height: 30,
            ),
            //  const SavePdfBtn(),
            Center(
              child: SizedBox(
                height: 52,
                width: 280,
                child: ElevatedButton(
                  onPressed: () async {
                    await printDoc(course1, course2, course3, course4, course5,
                        course6, course7, course8, course9, course10);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Colors.black45,
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  child: const Text(
                    'Print/Save pdf',
                    style: Styles.buttonTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }

  // Future<void> printDoc() async {
  //   final doc = pw.Document();
  //   doc.addPage(pw.Page(
  //       pageFormat: PdfPageFormat.a4,
  //       build: (pw.Context context) {
  //         return buildPrintableData_nd1f(course1, course2, course3, course4,
  //             course5, course6, course7, course8, course9, course10);
  //       }));
  //   await Printing.layoutPdf(
  //       onLayout: (PdfPageFormat format) async => doc.save());
  // }
}
