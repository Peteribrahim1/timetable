import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:timetable/screens/view_hnd2_first.dart';

import '../resources/auth_methods.dart';
import '../styles/styles.dart';
import '../utils/utils.dart';

class HND2Add_first extends StatefulWidget {
  const HND2Add_first({super.key});

  @override
  State<HND2Add_first> createState() => _HND2Add_firstState();
}

class _HND2Add_firstState extends State<HND2Add_first> {
  final TextEditingController _courseController = TextEditingController();
  final TextEditingController _lecturerController = TextEditingController();
  final TextEditingController _creditController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _courseController.dispose();
    _lecturerController.dispose();
    _creditController.dispose();
  }

  bool _isLoading = false;

  void saveData() async {
    setState(() {
      _isLoading = true;
    });
    final snap = await FirebaseFirestore.instance.collection('HND2first').get();

    final snap2 = snap.docs
        .where((element) =>
            element["uid"] == FirebaseAuth.instance.currentUser?.uid)
        .toList();

    if (snap2.length < 11) {
      String res = await AuthMethods().saveHND2first(
          Course: _courseController.text,
          Lecturer: _lecturerController.text,
          CreditUnit: _creditController.text);

      setState(() {
        _isLoading = false;
        _courseController.text = '';
        _lecturerController.text = '';
        _creditController.text = '';
      });

      if (res != 'success') {
        showSnackBar(res, context);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: Colors.green,
            content: Text('Record saved successfully!'),
          ),
        );
      }
    } else {
      setState(() {
        _isLoading = false;
        _courseController.text = '';
        _lecturerController.text = '';
        _creditController.text = '';
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Colors.black,
          content: Text('You cannot add more than 10 courses in a semester'),
        ),
      );
      print('no limit');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ADD COURSE/LECTURER 400L FIRST',
          style: Styles.appBarTextStyle,
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            TextField(
              maxLength: 6,
              controller: _courseController,
              decoration: InputDecoration(
                filled: true,
                counterText: "",
                fillColor: Colors.white,
                prefixIcon: const Icon(
                  Icons.drive_file_rename_outline,
                ),
                contentPadding: const EdgeInsets.all(18),
                hintText: 'Course',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                      color: Color.fromRGBO(20, 10, 38, 1), width: 1),
                ),
                hintStyle: Styles.hintTextStyle,
              ),
            ),
            const SizedBox(height: 15),
            TextField(
              maxLength: 20,
              controller: _lecturerController,
              decoration: InputDecoration(
                filled: true,
                counterText: "",
                fillColor: Colors.white,
                prefixIcon: const Icon(
                  Icons.drive_file_rename_outline,
                ),
                contentPadding: const EdgeInsets.all(18),
                hintText: 'Lecturer',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                      color: Color.fromRGBO(20, 10, 38, 1), width: 1),
                ),
                hintStyle: Styles.hintTextStyle,
              ),
            ),
            const SizedBox(height: 15),
            TextField(
              maxLength: 1,
              keyboardType: TextInputType.number,
              controller: _creditController,
              decoration: InputDecoration(
                filled: true,
                counterText: "",
                fillColor: Colors.white,
                prefixIcon: const Icon(
                  Icons.drive_file_rename_outline,
                ),
                contentPadding: const EdgeInsets.all(18),
                hintText: 'Credit Unit',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                      color: Color.fromRGBO(20, 10, 38, 1), width: 1),
                ),
                hintStyle: Styles.hintTextStyle,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: SizedBox(
                height: 52,
                width: 280,
                child: ElevatedButton(
                  onPressed: saveData,
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
                  child: _isLoading
                      ? const Center(
                          child: CircularProgressIndicator(
                            color: Colors.white,
                          ),
                        )
                      : const Text(
                          'Add',
                          style: Styles.buttonTextStyle,
                          textAlign: TextAlign.center,
                        ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: SizedBox(
                height: 52,
                width: 280,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const ViewHNd2First(),
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
                    'Submit',
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
