import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../styles/styles.dart';

class AllocationNd1 extends StatefulWidget {
  const AllocationNd1({
    super.key,
  });

  @override
  State<AllocationNd1> createState() => _AllocationNd1State();
}

class _AllocationNd1State extends State<AllocationNd1> {
  String LC0M111 = '';
  String LC0M112 = '';
  String LC0M113 = '';
  String LC0M114 = '';
  String LC0M115 = '';
  String LC0M121 = '';
  String LC0M122 = '';
  String LC0M123 = '';
  String LC0M124 = '';
  String LC0M125 = '';
  String LC0M126 = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchdata();
  }

  void fetchdata() async {
    DocumentSnapshot snap = await FirebaseFirestore.instance
        .collection('ND1_LECTURERS')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get();

    setState(() {
      LC0M111 = (snap.data() as Map<String, dynamic>)['LC0M111'];
      LC0M112 = (snap.data() as Map<String, dynamic>)['LC0M112'];
      LC0M113 = (snap.data() as Map<String, dynamic>)['LC0M113'];
      LC0M114 = (snap.data() as Map<String, dynamic>)['LC0M114'];
      LC0M115 = (snap.data() as Map<String, dynamic>)['LC0M115'];
      LC0M121 = (snap.data() as Map<String, dynamic>)['LC0M121'];
      LC0M122 = (snap.data() as Map<String, dynamic>)['LC0M122'];
      LC0M123 = (snap.data() as Map<String, dynamic>)['LC0M123'];
      LC0M124 = (snap.data() as Map<String, dynamic>)['LC0M124'];
      LC0M125 = (snap.data() as Map<String, dynamic>)['LC0M125'];
      LC0M126 = (snap.data() as Map<String, dynamic>)['LC0M126'];
    });
  }

  final currentUser = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ALLOCATION ND1 COMP SCI',
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
                'ND1 COURSE TO LECTURER ALLOCATION',
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
                  'COM111:',
                  style: Styles.fieldTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    LC0M111,
                    style: Styles.fieldTextStyle,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Text(
                  'COM112:',
                  style: Styles.fieldTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    LC0M112,
                    style: Styles.fieldTextStyle,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Text(
                  'COM113:',
                  style: Styles.fieldTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    LC0M113,
                    style: Styles.fieldTextStyle,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Text(
                  'COM114:',
                  style: Styles.fieldTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    LC0M114,
                    style: Styles.fieldTextStyle,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Text(
                  'COM115:',
                  style: Styles.fieldTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    LC0M115,
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
                  'COM121:',
                  style: Styles.fieldTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    LC0M121,
                    style: Styles.fieldTextStyle,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Text(
                  'COM122:',
                  style: Styles.fieldTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    LC0M122,
                    style: Styles.fieldTextStyle,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Text(
                  'COM123:',
                  style: Styles.fieldTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    LC0M123,
                    style: Styles.fieldTextStyle,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Text(
                  'COM124:',
                  style: Styles.fieldTextStyle,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    LC0M124,
                    style: Styles.fieldTextStyle,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Text(
                  'COM125:',
                  style: Styles.fieldTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    LC0M125,
                    style: Styles.fieldTextStyle,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Text(
                  'COM126:',
                  style: Styles.fieldTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    LC0M126,
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
