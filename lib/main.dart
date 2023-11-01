import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:timetable/screens/allocation_nd1.dart';
import 'package:timetable/screens/login_screen.dart';
import 'package:timetable/screens/signup_screen.dart';
import 'package:timetable/screens/splash_screen.dart';
import 'package:timetable/screens/timetable_nd1_first.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: 'AIzaSyDle7BcK_QEM8YiVC8efykW0AO_Lnln-gE',
          appId: 'mobilesdk_app_id',
          messagingSenderId: 'project_number',
          projectId: 'timetable-cf3fb'));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Timetable',
      routes: {
        '/': (ctx) => const SplashScreen(),
        LoginScreen.routeName: (ctx) => const LoginScreen(),
      },
      // home: AllocationNd1(),
    );
  }
}
