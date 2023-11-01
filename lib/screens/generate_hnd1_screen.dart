import 'package:flutter/material.dart';
import 'package:timetable/screens/timetable_hnd1_first.dart';
import 'package:timetable/screens/timetable_hnd1_second.dart';

import '../styles/styles.dart';
import 'allocation_hnd1.dart';
import 'home.dart';

class Generate_hnd1 extends StatefulWidget {
  const Generate_hnd1({super.key});

  @override
  State<Generate_hnd1> createState() => _Generate_hnd1State();
}

class _Generate_hnd1State extends State<Generate_hnd1> {
  bool isLoadingHND1first = false;
  bool isLoadingHND1second = false;

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
        padding: EdgeInsets.all(20),
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
                      isLoadingHND1first = true;
                    });

                    await simulateNetworkRequest();

                    setState(() {
                      isLoadingHND1first = false;
                    });

                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Timetable_hnd1_first(),
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
                  child: isLoadingHND1first
                      ? const CircularProgressIndicator(
                          color: Colors.white,
                        )
                      : const Text(
                          'Generate HND1 1st Semester Timetable',
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
                      isLoadingHND1second = true;
                    });

                    await simulateNetworkRequest();

                    setState(() {
                      isLoadingHND1second = false;
                    });

                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Timetable_hnd1_second(),
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
                  child: isLoadingHND1second
                      ? const CircularProgressIndicator(
                          color: Colors.white,
                        )
                      : const Text(
                          'Generate HND1 2nd Semester Timetable',
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
                        builder: (context) => const AllocationHnd1(),
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
