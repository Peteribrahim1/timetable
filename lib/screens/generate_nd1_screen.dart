import 'dart:async';

import 'package:flutter/material.dart';
import 'package:timetable/screens/old/allocation_nd1.dart';
import 'package:timetable/screens/timetable_nd1_first.dart';
import 'package:timetable/screens/old/timetable_nd1_second.dart';

import '../styles/styles.dart';
import 'home.dart';

class Generate_nd1 extends StatefulWidget {
  const Generate_nd1({
    super.key,
  });

  @override
  State<Generate_nd1> createState() => _Generate_nd1State();
}

class _Generate_nd1State extends State<Generate_nd1> {
  bool isLoadingND1first = false;
  bool isLoadingND1second = false;

  Future<void> simulateNetworkRequest() async {
    // Simulate a network request or any other time-consuming task.
    await Future.delayed(
        const Duration(seconds: 2)); // Simulate a 2-second delay.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 74),
            const Center(
              child: Icon(
                Icons.security_update_good,
                color: Colors.green,
                size: 50,
              ),
            ),
            const SizedBox(height: 10),
            const Center(
              child: Text(
                'Course Allocation Done Successfully',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(height: 80),
            Center(
              child: SizedBox(
                height: 52,
                width: 280,
                child: ElevatedButton(
                  onPressed: () async {
                    setState(() {
                      isLoadingND1first = true;
                    });

                    await simulateNetworkRequest();

                    setState(() {
                      isLoadingND1first = false;
                    });

                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Timetable_nd1_first(),
                      ),
                    );
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
                  child: isLoadingND1first
                      ? const CircularProgressIndicator(
                          color: Colors.white,
                        )
                      : const Text(
                          'Generate ND1 1st Semester Timetable',
                          style: Styles.buttonTextStyle,
                          textAlign: TextAlign.center,
                        ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: SizedBox(
                height: 52,
                width: 280,
                child: ElevatedButton(
                  onPressed: () async {
                    setState(() {
                      isLoadingND1second = true;
                    });

                    await simulateNetworkRequest();

                    setState(() {
                      isLoadingND1second = false;
                    });

                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Timetable_nd1_second(),
                      ),
                    );
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
                  child: isLoadingND1second
                      ? const CircularProgressIndicator(
                          color: Colors.white,
                        )
                      : const Text(
                          'Generate ND1 2nd Semester Timetable',
                          style: Styles.buttonTextStyle,
                          textAlign: TextAlign.center,
                        ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: SizedBox(
                height: 52,
                width: 280,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const AllocationNd1(),
                      ),
                    );
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
                  child:
                      // _isLoading
                      //     ? const Center(
                      //   child: CircularProgressIndicator(
                      //     color: Colors.white,
                      //   ),
                      // ) :
                      const Text(
                    'Generate Course/Lecturer Allocation',
                    style: Styles.buttonTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 100),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const Home(),
                    ),
                  );
                },
                child: const Column(
                  children: [
                    Icon(
                      Icons.home_filled,
                      size: 30,
                      color: Colors.red,
                    ),
                    Text(
                      'Back to Home',
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      )),
    );
  }
}
