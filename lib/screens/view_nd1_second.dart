import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:timetable/screens/nd1_timetable_second.dart';

import '../styles/styles.dart';

class ViewNd1Second extends StatefulWidget {
  const ViewNd1Second({super.key});

  @override
  State<ViewNd1Second> createState() => _ViewNd1SecondState();
}

class _ViewNd1SecondState extends State<ViewNd1Second> {
  List<QueryDocumentSnapshot<Map<String, dynamic>>> myList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  void fetchData() async {
    final snap = await FirebaseFirestore.instance.collection('ND1second').get();
    print(snap.docs[0]['Course']);

    final snap2 = snap.docs
        .where((element) =>
            element["uid"] == FirebaseAuth.instance.currentUser?.uid)
        .toList();

    myList = snap2;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'VIEW COURSE/LECTURER 100L SECOND',
          style: Styles.appBarTextStyle,
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 20),
            Container(
              height: MediaQuery.of(context).size.height * 0.65,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: myList.length,
                itemBuilder: (context, index) {
                  final data = myList[index];
                  return Container(
                    color: Colors.grey,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                data['Course'],
                                style: Styles.priceTextStyle,
                              ),
                              Text(
                                data['Lecturer'],
                                style: Styles.cardTextStyle,
                              ),
                              Text(
                                data['CreditUnit'],
                                style: Styles.cardTextStyle,
                              ),
                            ],
                          ),
                          InkWell(
                            onTap: () async {
                              await FirebaseFirestore.instance
                                  .collection('ND1second')
                                  .doc(data.reference.id.toString())
                                  .delete();
                              fetchData();
                            },
                            child: const Icon(
                              Icons.delete,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                  //   Item(
                  //   itemVal: data,
                  // );
                },
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: SizedBox(
                height: 52,
                width: 280,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const Nd1Timetable_second(),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Colors.red,
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  child: const Text(
                    'Generate Timetable',
                    style: Styles.buttonTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
