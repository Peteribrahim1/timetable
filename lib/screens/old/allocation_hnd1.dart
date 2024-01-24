import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../styles/styles.dart';

class AllocationHnd1 extends StatefulWidget {
  const AllocationHnd1({
    super.key,
  });

  @override
  State<AllocationHnd1> createState() => _AllocationHnd1State();
}

class _AllocationHnd1State extends State<AllocationHnd1> {
  String LC0M311 = '';
  String LC0M312 = '';
  String LC0M313 = '';
  String LC0M314 = '';
  String LC0M315 = '';
  String LC0M321 = '';
  String LC0M322 = '';
  String LC0M323 = '';
  String LC0M324 = '';
  String LC0M325 = '';
  String LC0M326 = '';
  String LC0M327 = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchdata();
  }

  void fetchdata() async {
    DocumentSnapshot snap = await FirebaseFirestore.instance
        .collection('HND1_LECTURERS')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get();

    setState(() {
      LC0M311 = (snap.data() as Map<String, dynamic>)['LC0M311'];
      LC0M312 = (snap.data() as Map<String, dynamic>)['LC0M312'];
      LC0M313 = (snap.data() as Map<String, dynamic>)['LC0M313'];
      LC0M314 = (snap.data() as Map<String, dynamic>)['LC0M314'];
      LC0M315 = (snap.data() as Map<String, dynamic>)['LC0M315'];
      LC0M321 = (snap.data() as Map<String, dynamic>)['LC0M321'];
      LC0M322 = (snap.data() as Map<String, dynamic>)['LC0M322'];
      LC0M323 = (snap.data() as Map<String, dynamic>)['LC0M323'];
      LC0M324 = (snap.data() as Map<String, dynamic>)['LC0M324'];
      LC0M325 = (snap.data() as Map<String, dynamic>)['LC0M325'];
      LC0M326 = (snap.data() as Map<String, dynamic>)['LC0M326'];
      LC0M327 = (snap.data() as Map<String, dynamic>)['LC0M327'];
    });
  }

  final currentUser = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ALLOCATION HND1 COMP SCI',
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
                'HND1 COURSE TO LECTURER ALLOCATION',
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
                  'COM311:',
                  style: Styles.fieldTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    LC0M311,
                    style: Styles.fieldTextStyle,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Text(
                  'COM312:',
                  style: Styles.fieldTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    LC0M312,
                    style: Styles.fieldTextStyle,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Text(
                  'COM313:',
                  style: Styles.fieldTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    LC0M313,
                    style: Styles.fieldTextStyle,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Text(
                  'COM314:',
                  style: Styles.fieldTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    LC0M314,
                    style: Styles.fieldTextStyle,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Text(
                  'COM315:',
                  style: Styles.fieldTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    LC0M315,
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
                  'COM321:',
                  style: Styles.fieldTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    LC0M321,
                    style: Styles.fieldTextStyle,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Text(
                  'COM322:',
                  style: Styles.fieldTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    LC0M322,
                    style: Styles.fieldTextStyle,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Text(
                  'COM323:',
                  style: Styles.fieldTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    LC0M323,
                    style: Styles.fieldTextStyle,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Text(
                  'COM324:',
                  style: Styles.fieldTextStyle,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    LC0M324,
                    style: Styles.fieldTextStyle,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Text(
                  'COM325:',
                  style: Styles.fieldTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    LC0M325,
                    style: Styles.fieldTextStyle,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Text(
                  'COM326:',
                  style: Styles.fieldTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    LC0M326,
                    style: Styles.fieldTextStyle,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Text(
                  'COM327:',
                  style: Styles.fieldTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    LC0M327,
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
