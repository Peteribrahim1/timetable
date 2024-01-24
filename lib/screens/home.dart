import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:timetable/screens/modal_hnd1.dart';
import 'package:timetable/screens/nd1_add_first.dart';
import 'package:timetable/screens/old/hnd1.dart';
import 'package:timetable/screens/login_screen.dart';
import 'package:timetable/screens/modal_nd1.dart';
import 'package:timetable/screens/old/nd2.dart';

import '../styles/styles.dart';
import 'old/hnd2.dart';
import 'modal_hnd2.dart';
import 'modal_nd2.dart';
import 'old/nd1.dart';

class Home extends StatefulWidget {
  static const routeName = '/role';

  const Home({
    Key? key,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _isLoading = false;

  void logOut() async {
    setState(() {
      _isLoading = true;
    });
    FirebaseAuth.instance.signOut();

    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        backgroundColor: Colors.black,
        content: Text('You are logged out!'),
      ),
    );
    setState(() {
      _isLoading = false;
    });
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
                child: Text(
                  'Welcome to',
                  style: Styles.normalTextStyle,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 30),
              const Center(
                child: Text(
                  'GSU Timetable Generator',
                  style: Styles.bigTextStyle,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 80),
              const Center(
                child: Text(
                  'Select a class to generate a timetable',
                  style: Styles.normalTextStyle,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 40),
              SizedBox(
                height: 52,
                width: 280,
                child: ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => const ModalND1(),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  child: const Text(
                    '100L',
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
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => const ModalND2(),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.redAccent),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  child: const Text(
                    '200L',
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
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => const ModalHND1(),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  child: const Text(
                    '300L',
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
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => const ModalHND2(),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.redAccent),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  child: const Text(
                    '400L',
                    style: Styles.buttonTextStyle,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              InkWell(
                onTap: () {
                  logOut();
                },
                child: const Column(
                  children: [
                    Icon(
                      Icons.logout,
                      size: 30,
                    ),
                    Text('Log out'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
