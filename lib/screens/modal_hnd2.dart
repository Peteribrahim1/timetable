import 'package:flutter/material.dart';
import 'package:timetable/screens/nd1_add_first.dart';

import '../styles/styles.dart';
import 'hnd2_add_first.dart';
import 'hnd2_add_second.dart';
import 'nd1_add_second.dart';

class ModalHND2 extends StatelessWidget {
  const ModalHND2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            SizedBox(
              height: 52,
              width: 280,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HND2Add_first()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                child: const Text(
                  'HND2 FIRST SEMESTER',
                  style: Styles.buttonTextStyle,
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 52,
              width: 280,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HND2Add_second()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                child: const Text(
                  'HND2 SECOND SEMESTER',
                  style: Styles.buttonTextStyle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
