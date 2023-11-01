import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../styles/styles.dart';

class AllocationNd2 extends StatefulWidget {
  const AllocationNd2({
    super.key,
  });

  @override
  State<AllocationNd2> createState() => _AllocationNd2State();
}

class _AllocationNd2State extends State<AllocationNd2> {
  String LC0M211 = '';
  String LC0M212 = '';
  String LC0M213 = '';
  String LC0M214 = '';
  String LC0M215 = '';
  String LC0M216 = '';
  String LC0M221 = '';
  String LC0M222 = '';
  String LC0M223 = '';
  String LC0M224 = '';
  String LC0M225 = '';
  String LC0M226 = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchdata();
  }

  void fetchdata() async {
    DocumentSnapshot snap = await FirebaseFirestore.instance
        .collection('ND2_LECTURERS')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get();

    setState(() {
      LC0M211 = (snap.data() as Map<String, dynamic>)['LC0M211'];
      LC0M212 = (snap.data() as Map<String, dynamic>)['LC0M212'];
      LC0M213 = (snap.data() as Map<String, dynamic>)['LC0M213'];
      LC0M214 = (snap.data() as Map<String, dynamic>)['LC0M214'];
      LC0M215 = (snap.data() as Map<String, dynamic>)['LC0M215'];
      LC0M216 = (snap.data() as Map<String, dynamic>)['LC0M216'];
      LC0M221 = (snap.data() as Map<String, dynamic>)['LC0M221'];
      LC0M222 = (snap.data() as Map<String, dynamic>)['LC0M222'];
      LC0M223 = (snap.data() as Map<String, dynamic>)['LC0M223'];
      LC0M224 = (snap.data() as Map<String, dynamic>)['LC0M224'];
      LC0M225 = (snap.data() as Map<String, dynamic>)['LC0M225'];
      LC0M226 = (snap.data() as Map<String, dynamic>)['LC0M226'];
    });
  }

  final currentUser = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ALLOCATION  COMP SCI',
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
                'ND2 COURSE TO LECTURER ALLOCATION',
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
                  'COM211:',
                  style: Styles.fieldTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    LC0M211,
                    style: Styles.fieldTextStyle,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Text(
                  'COM212:',
                  style: Styles.fieldTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    LC0M212,
                    style: Styles.fieldTextStyle,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Text(
                  'COM213:',
                  style: Styles.fieldTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    LC0M213,
                    style: Styles.fieldTextStyle,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Text(
                  'COM214:',
                  style: Styles.fieldTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    LC0M214,
                    style: Styles.fieldTextStyle,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Text(
                  'COM215:',
                  style: Styles.fieldTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    LC0M215,
                    style: Styles.fieldTextStyle,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Text(
                  'COM216:',
                  style: Styles.fieldTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    LC0M216,
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
                  'COM221:',
                  style: Styles.fieldTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    LC0M221,
                    style: Styles.fieldTextStyle,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Text(
                  'COM222:',
                  style: Styles.fieldTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    LC0M222,
                    style: Styles.fieldTextStyle,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Text(
                  'COM223:',
                  style: Styles.fieldTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    LC0M223,
                    style: Styles.fieldTextStyle,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Text(
                  'COM224:',
                  style: Styles.fieldTextStyle,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    LC0M224,
                    style: Styles.fieldTextStyle,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Text(
                  'COM225:',
                  style: Styles.fieldTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    LC0M225,
                    style: Styles.fieldTextStyle,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Text(
                  'COM226:',
                  style: Styles.fieldTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    LC0M226,
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
