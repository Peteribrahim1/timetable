import 'package:flutter/material.dart';
import 'package:timetable/screens/nd1_add_first.dart';

import '../styles/styles.dart';
import 'nd1_add_second.dart';
import 'nd2_add_first.dart';
import 'nd2_add_second.dart';

class ModalND2 extends StatelessWidget {
  const ModalND2({super.key});

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
                        builder: (context) => const ND2Add_first()),
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
                  '200L FIRST SEMESTER',
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
                        builder: (context) => const ND2Add_second()),
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
                  '200L SECOND SEMESTER',
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
