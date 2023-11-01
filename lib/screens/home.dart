import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:timetable/screens/hnd1.dart';
import 'package:timetable/screens/login_screen.dart';
import 'package:timetable/screens/nd2.dart';

import '../styles/styles.dart';
import 'hnd2.dart';
import 'nd1.dart';

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
                  'Hi dear! Welcome to',
                  style: Styles.normalTextStyle,
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'HAFED Poly Timetable App',
                style: Styles.bigTextStyle,
              ),
              const SizedBox(height: 80),
              const Text(
                'Select a class to proceed',
                style: Styles.normalTextStyle,
              ),
              const SizedBox(height: 40),
              SizedBox(
                height: 52,
                width: 280,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ND1()),
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
                    'ND1',
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
                      MaterialPageRoute(builder: (context) => const ND2()),
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
                    'ND2',
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
                      MaterialPageRoute(builder: (context) => const HND1()),
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
                    'HND1',
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
                      MaterialPageRoute(builder: (context) => const HND2()),
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
                    'HND2',
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
