import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../styles/styles.dart';

class AllocationHnd2 extends StatefulWidget {
  const AllocationHnd2({
    super.key,
  });

  @override
  State<AllocationHnd2> createState() => _AllocationHnd2State();
}

class _AllocationHnd2State extends State<AllocationHnd2> {
  String LC0M411 = '';
  String LC0M412 = '';
  String LC0M413 = '';
  String LC0M414 = '';
  String LC0M415 = '';
  String LC0M422 = '';
  String LC0M423 = '';
  String LC0M424 = '';
  String LC0M425 = '';
  String LC0M426 = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchdata();
  }

  void fetchdata() async {
    DocumentSnapshot snap = await FirebaseFirestore.instance
        .collection('HND2_LECTURERS')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get();

    setState(() {
      LC0M411 = (snap.data() as Map<String, dynamic>)['LC0M411'];
      LC0M412 = (snap.data() as Map<String, dynamic>)['LC0M412'];
      LC0M413 = (snap.data() as Map<String, dynamic>)['LC0M413'];
      LC0M414 = (snap.data() as Map<String, dynamic>)['LC0M414'];
      LC0M415 = (snap.data() as Map<String, dynamic>)['LC0M415'];
      LC0M422 = (snap.data() as Map<String, dynamic>)['LC0M422'];
      LC0M423 = (snap.data() as Map<String, dynamic>)['LC0M423'];
      LC0M424 = (snap.data() as Map<String, dynamic>)['LC0M424'];
      LC0M425 = (snap.data() as Map<String, dynamic>)['LC0M425'];
      LC0M426 = (snap.data() as Map<String, dynamic>)['LC0M426'];
    });
  }

  final currentUser = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ALLOCATION HND2 COMP SCI',
          style: Styles.appBarTextStyle,
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            const Center(
              child: Text(
                'HND2 COURSE TO LECTURER ALLOCATION',
                style: Styles.fieldTextStyle,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 25),
            const SizedBox(height: 10),
            const Center(
              child: Text(
                'FIRST SEMESTER',
                style: Styles.fieldTextStyle,
              ),
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Text(
                  'COM411:',
                  style: Styles.fieldTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    LC0M411,
                    style: Styles.fieldTextStyle,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Text(
                  'COM412:',
                  style: Styles.fieldTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    LC0M412,
                    style: Styles.fieldTextStyle,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Text(
                  'COM413:',
                  style: Styles.fieldTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    LC0M413,
                    style: Styles.fieldTextStyle,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Text(
                  'COM414:',
                  style: Styles.fieldTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    LC0M414,
                    style: Styles.fieldTextStyle,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Text(
                  'COM415:',
                  style: Styles.fieldTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    LC0M415,
                    style: Styles.fieldTextStyle,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Center(
              child: Text(
                'SECOND SEMESTER',
                style: Styles.fieldTextStyle,
              ),
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Text(
                  'COM422:',
                  style: Styles.fieldTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    LC0M422,
                    style: Styles.fieldTextStyle,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Text(
                  'COM423:',
                  style: Styles.fieldTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    LC0M423,
                    style: Styles.fieldTextStyle,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Text(
                  'COM424:',
                  style: Styles.fieldTextStyle,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    LC0M424,
                    style: Styles.fieldTextStyle,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Text(
                  'COM425:',
                  style: Styles.fieldTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    LC0M425,
                    style: Styles.fieldTextStyle,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Text(
                  'COM426:',
                  style: Styles.fieldTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    LC0M426,
                    style: Styles.fieldTextStyle,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
