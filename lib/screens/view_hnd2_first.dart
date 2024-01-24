import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../styles/styles.dart';
import 'hnd2_timetable_first.dart';

class ViewHNd2First extends StatefulWidget {
  const ViewHNd2First({super.key});

  @override
  State<ViewHNd2First> createState() => _ViewHNd2FirstState();
}

class _ViewHNd2FirstState extends State<ViewHNd2First> {
  List<QueryDocumentSnapshot<Map<String, dynamic>>> myList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  void fetchData() async {
    final snap = await FirebaseFirestore.instance.collection('HND2first').get();
    print(snap.docs[0]['Course']);

    final snap2 = snap.docs
        .where((element) =>
            element["uid"] == FirebaseAuth.instance.currentUser?.uid)
        .toList();
    print('snap2 ${snap2.length}');
    print('snap ${snap.docs.length}');
    myList = snap2;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'VIEW COURSE/LECTURER 400L FIRST',
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
                  print(data.reference.id.toString());
                  print(myList.length);
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
                                  .collection('HND2first')
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
                        builder: (context) => const HNd2Timetable_first(),
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
