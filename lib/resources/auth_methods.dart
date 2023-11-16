import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  final currentUser = FirebaseAuth.instance.currentUser;
  //signup user
  Future<String> signUpUser({
    required String email,
    required String password,
  }) async {
    String res = 'Please enter all the fields';
    try {
      if (email.isNotEmpty && password.isNotEmpty) {
        // register user
        UserCredential cred = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);

        print(cred.user!.uid);
        print('User created successfuly');
        res = 'success';
      }
    } on FirebaseAuthException catch (err) {
      print(err.code);
      if (err.code == 'invalid-email') {
        res = 'Wrong email format';
      } else if (err.code == 'weak-password') {
        res = 'Password cannot be less than 6 characters';
      } else if (err.code == 'email-already-in-use') {
        res = 'User already exist';
      } else if (err.code == 'network-request-failed') {
        res = 'Network error';
      }
    } catch (err) {
      res = err.toString();
    }
    return res;
  }

  //logging in user
  Future<String> loginUser({
    required String email,
    required String password,
  }) async {
    String res = 'Some error occured';

    try {
      if (email.isNotEmpty && password.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(
            email: email, password: password);
        res = 'success';
      } else {
        res = 'Please enter all the fields';
      }
    } on FirebaseAuthException catch (err) {
      print(err.code);
      if (err.code == 'invalid-email') {
        res = 'Wrong email format';
      } else if (err.code == 'INVALID_LOGIN_CREDENTIALS') {
        res = 'Invalid Login Credentials';
      }
    } catch (err) {
      res = err.toString();
    }
    return res;
  }

  // save to nd1 db
  Future<String> saveND1({
    required String? LC0M111,
    required String? LC0M112,
    required String? LC0M113,
    required String? LC0M114,
    required String? LC0M115,
    required String? LC0M121,
    required String? LC0M122,
    required String? LC0M123,
    required String? LC0M124,
    required String? LC0M125,
    required String? LC0M126,
  }) async {
    String res = 'Please enter all the fields';
    String? uid = FirebaseAuth.instance.currentUser?.uid;
    try {
      if (LC0M111 != null &&
          LC0M112 != null &&
          LC0M113 != null &&
          LC0M114 != null &&
          LC0M115 != null &&
          LC0M121 != null &&
          LC0M122 != null &&
          LC0M123 != null &&
          LC0M124 != null &&
          LC0M125 != null &&
          LC0M126 != null) {
        //add user to database
        await _firestore.collection('ND1_LECTURERS').doc(uid).set({
          'LC0M111': LC0M111,
          'LC0M112': LC0M112,
          'LC0M113': LC0M113,
          'LC0M114': LC0M114,
          'LC0M115': LC0M115,
          'LC0M121': LC0M121,
          'LC0M122': LC0M122,
          'LC0M123': LC0M123,
          'LC0M124': LC0M124,
          'LC0M125': LC0M125,
          'LC0M126': LC0M126,
          'uid': uid,
        });
        res = 'success';
      }
    } on FirebaseAuthException catch (err) {
      print(err.code);
      if (err.code == 'invalid-email') {
        res = 'Wrong email format';
      } else if (err.code == 'weak-password') {
        res = 'Password cannot be less than 6 characters';
      } else if (err.code == 'email-already-in-use') {
        res = 'User already exist';
      }
    } catch (err) {
      res = err.toString();
    }
    return res;
  }

  // save to nd2 db
  Future<String> saveND2({
    required String? LC0M211,
    required String? LC0M212,
    required String? LC0M213,
    required String? LC0M214,
    required String? LC0M215,
    required String? LC0M216,
    required String? LC0M221,
    required String? LC0M222,
    required String? LC0M223,
    required String? LC0M224,
    required String? LC0M225,
    required String? LC0M226,
  }) async {
    String res = 'Please enter all the fields';
    String? uid = FirebaseAuth.instance.currentUser?.uid;
    try {
      if (LC0M211 != null &&
          LC0M212 != null &&
          LC0M213 != null &&
          LC0M214 != null &&
          LC0M215 != null &&
          LC0M216 != null &&
          LC0M221 != null &&
          LC0M222 != null &&
          LC0M223 != null &&
          LC0M224 != null &&
          LC0M225 != null &&
          LC0M226 != null) {
        //add user to database
        await _firestore.collection('ND2_LECTURERS').doc(uid).set({
          'LC0M211': LC0M211,
          'LC0M212': LC0M212,
          'LC0M213': LC0M213,
          'LC0M214': LC0M214,
          'LC0M215': LC0M215,
          'LC0M216': LC0M216,
          'LC0M221': LC0M221,
          'LC0M222': LC0M222,
          'LC0M223': LC0M223,
          'LC0M224': LC0M224,
          'LC0M225': LC0M225,
          'LC0M226': LC0M226,
          'uid': uid,
        });
        res = 'success';
      }
    } on FirebaseAuthException catch (err) {
      print(err.code);
    } catch (err) {
      res = err.toString();
    }
    return res;
  }

  // save to HND1 db
  Future<String> saveHND1({
    required String? LC0M311,
    required String? LC0M312,
    required String? LC0M313,
    required String? LC0M314,
    required String? LC0M315,
    required String? LC0M321,
    required String? LC0M322,
    required String? LC0M323,
    required String? LC0M324,
    required String? LC0M325,
    required String? LC0M326,
    required String? LC0M327,
  }) async {
    String res = 'Please enter all the fields';
    String? uid = FirebaseAuth.instance.currentUser?.uid;
    try {
      if (LC0M311 != null &&
          LC0M312 != null &&
          LC0M313 != null &&
          LC0M314 != null &&
          LC0M315 != null &&
          LC0M321 != null &&
          LC0M322 != null &&
          LC0M323 != null &&
          LC0M324 != null &&
          LC0M325 != null &&
          LC0M326 != null &&
          LC0M327 != null) {
        //add user to database
        await _firestore.collection('HND1_LECTURERS').doc(uid).set({
          'LC0M311': LC0M311,
          'LC0M312': LC0M312,
          'LC0M313': LC0M313,
          'LC0M314': LC0M314,
          'LC0M315': LC0M315,
          'LC0M321': LC0M321,
          'LC0M322': LC0M322,
          'LC0M323': LC0M323,
          'LC0M324': LC0M324,
          'LC0M325': LC0M325,
          'LC0M326': LC0M326,
          'LC0M327': LC0M327,
          'uid': uid,
        });
        res = 'success';
      }
    } on FirebaseAuthException catch (err) {
      print(err.code);
    } catch (err) {
      res = err.toString();
    }
    return res;
  }

  // save to HND2 db
  Future<String> saveHND2({
    required String? LC0M411,
    required String? LC0M412,
    required String? LC0M413,
    required String? LC0M414,
    required String? LC0M415,
    required String? LC0M422,
    required String? LC0M423,
    required String? LC0M424,
    required String? LC0M425,
    required String? LC0M426,
  }) async {
    String res = 'Please enter all the fields';
    String? uid = FirebaseAuth.instance.currentUser?.uid;
    try {
      if (LC0M411 != null &&
          LC0M412 != null &&
          LC0M413 != null &&
          LC0M414 != null &&
          LC0M415 != null &&
          LC0M422 != null &&
          LC0M423 != null &&
          LC0M424 != null &&
          LC0M425 != null &&
          LC0M426 != null) {
        //add user to database
        await _firestore.collection('HND2_LECTURERS').doc(uid).set({
          'LC0M411': LC0M411,
          'LC0M412': LC0M412,
          'LC0M413': LC0M413,
          'LC0M414': LC0M414,
          'LC0M415': LC0M415,
          'LC0M422': LC0M422,
          'LC0M423': LC0M423,
          'LC0M424': LC0M424,
          'LC0M425': LC0M425,
          'LC0M426': LC0M426,
          'uid': uid,
        });
        res = 'success';
      }
    } on FirebaseAuthException catch (err) {
      print(err.code);
    } catch (err) {
      res = err.toString();
    }
    return res;
  }

// new
  // save
  Future<String> saveND1first({
    required String Course,
    required String Lecturer,
    required String CreditUnit,
  }) async {
    String res = 'Please enter all the fields';
    String? uid = FirebaseAuth.instance.currentUser?.uid;
    try {
      if (Course.isNotEmpty && Lecturer.isNotEmpty && CreditUnit.isNotEmpty) {
        //add user to database
        await _firestore.collection('ND1first').add({
          'Course': Course,
          'Lecturer': Lecturer,
          'CreditUnit': CreditUnit,
          'uid': uid,
        });
        res = 'success';
      }
    } on FirebaseAuthException catch (err) {
      print(err.code);
    } catch (err) {
      res = err.toString();
    }
    return res;
  }

  Future<String> saveND1second({
    required String Course,
    required String Lecturer,
    required String CreditUnit,
  }) async {
    String res = 'Please enter all the fields';
    String? uid = FirebaseAuth.instance.currentUser?.uid;
    try {
      if (Course.isNotEmpty && Lecturer.isNotEmpty && CreditUnit.isNotEmpty) {
        //add user to database
        await _firestore.collection('ND1second').add({
          'Course': Course,
          'Lecturer': Lecturer,
          'CreditUnit': CreditUnit,
          'uid': uid,
        });
        res = 'success';
      }
    } on FirebaseAuthException catch (err) {
      print(err.code);
    } catch (err) {
      res = err.toString();
    }
    return res;
  }

  Future<String> saveND2first({
    required String Course,
    required String Lecturer,
    required String CreditUnit,
  }) async {
    String res = 'Please enter all the fields';
    String? uid = FirebaseAuth.instance.currentUser?.uid;
    try {
      if (Course.isNotEmpty && Lecturer.isNotEmpty && CreditUnit.isNotEmpty) {
        //add user to database
        await _firestore.collection('ND2first').add({
          'Course': Course,
          'Lecturer': Lecturer,
          'CreditUnit': CreditUnit,
          'uid': uid,
        });
        res = 'success';
      }
    } on FirebaseAuthException catch (err) {
      print(err.code);
    } catch (err) {
      res = err.toString();
    }
    return res;
  }

  Future<String> saveND2second({
    required String Course,
    required String Lecturer,
    required String CreditUnit,
  }) async {
    String res = 'Please enter all the fields';
    String? uid = FirebaseAuth.instance.currentUser?.uid;
    try {
      if (Course.isNotEmpty && Lecturer.isNotEmpty && CreditUnit.isNotEmpty) {
        //add user to database
        await _firestore.collection('ND2second').add({
          'Course': Course,
          'Lecturer': Lecturer,
          'CreditUnit': CreditUnit,
          'uid': uid,
        });
        res = 'success';
      }
    } on FirebaseAuthException catch (err) {
      print(err.code);
    } catch (err) {
      res = err.toString();
    }
    return res;
  }

  Future<String> saveHND1first({
    required String Course,
    required String Lecturer,
    required String CreditUnit,
  }) async {
    String res = 'Please enter all the fields';
    String? uid = FirebaseAuth.instance.currentUser?.uid;
    try {
      if (Course.isNotEmpty && Lecturer.isNotEmpty && CreditUnit.isNotEmpty) {
        //add user to database
        await _firestore.collection('HND1first').add({
          'Course': Course,
          'Lecturer': Lecturer,
          'CreditUnit': CreditUnit,
          'uid': uid,
        });
        res = 'success';
      }
    } on FirebaseAuthException catch (err) {
      print(err.code);
    } catch (err) {
      res = err.toString();
    }
    return res;
  }

  Future<String> saveHND1second({
    required String Course,
    required String Lecturer,
    required String CreditUnit,
  }) async {
    String res = 'Please enter all the fields';
    String? uid = FirebaseAuth.instance.currentUser?.uid;
    try {
      if (Course.isNotEmpty && Lecturer.isNotEmpty && CreditUnit.isNotEmpty) {
        //add user to database
        await _firestore.collection('HND1second').add({
          'Course': Course,
          'Lecturer': Lecturer,
          'CreditUnit': CreditUnit,
          'uid': uid,
        });
        res = 'success';
      }
    } on FirebaseAuthException catch (err) {
      print(err.code);
    } catch (err) {
      res = err.toString();
    }
    return res;
  }

  Future<String> saveHND2first({
    required String Course,
    required String Lecturer,
    required String CreditUnit,
  }) async {
    String res = 'Please enter all the fields';
    String? uid = FirebaseAuth.instance.currentUser?.uid;
    try {
      if (Course.isNotEmpty && Lecturer.isNotEmpty && CreditUnit.isNotEmpty) {
        //add user to database
        await _firestore.collection('HND2first').add({
          'Course': Course,
          'Lecturer': Lecturer,
          'CreditUnit': CreditUnit,
          'uid': uid,
        });
        res = 'success';
      }
    } on FirebaseAuthException catch (err) {
      print(err.code);
    } catch (err) {
      res = err.toString();
    }
    return res;
  }

  Future<String> saveHND2second({
    required String Course,
    required String Lecturer,
    required String CreditUnit,
  }) async {
    String res = 'Please enter all the fields';
    String? uid = FirebaseAuth.instance.currentUser?.uid;
    try {
      if (Course.isNotEmpty && Lecturer.isNotEmpty && CreditUnit.isNotEmpty) {
        //add user to database
        await _firestore.collection('HND2second').add({
          'Course': Course,
          'Lecturer': Lecturer,
          'CreditUnit': CreditUnit,
          'uid': uid,
        });
        res = 'success';
      }
    } on FirebaseAuthException catch (err) {
      print(err.code);
    } catch (err) {
      res = err.toString();
    }
    return res;
  }
}
