import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:timetable/screens/generate_nd1_screen.dart';
import 'package:timetable/screens/home.dart';
import '../resources/auth_methods.dart';
import '../styles/styles.dart';
import '../utils/utils.dart';

class ND1 extends StatefulWidget {
  const ND1({Key? key,}) : super(key: key);

  @override
  State<ND1> createState() => _ND1State();
}

class _ND1State extends State<ND1> {
  List<dynamic> lecturers = [];

  //first semester
  String? lecturerId_COM111;
  String? selectedLecturer_COM111;

  String? lecturerId_COM112;
  String? selectedLecturer_COM112;

  String? lecturerId_COM113;
  String? selectedLecturer_COM113;

  String? lecturerId_COM114;
  String? selectedLecturer_COM114;

  String? lecturerId_COM115;
  String? selectedLecturer_COM115;

  //second semester
  String? lecturerId_COM121;
  String? selectedLecturer_COM121;

  String? lecturerId_COM122;
  String? selectedLecturer_COM122;

  String? lecturerId_COM123;
  String? selectedLecturer_COM123;

  String? lecturerId_COM124;
  String? selectedLecturer_COM124;

  String? lecturerId_COM125;
  String? selectedLecturer_COM125;

  String? lecturerId_COM126;
  String? selectedLecturer_COM126;

  @override
  void initState() {
    super.initState();
    this.lecturers.add({"id": 1, "name": "Dr Muktar Hussaini"});
    this.lecturers.add({"id": 2, "name": "Mal. Inusa Mai'jama'a"});
    this.lecturers.add({"id": 3, "name": "Mal. Adamu Isah"});
    this.lecturers.add({"id": 4, "name": "Mal. Jamilu Murtala"});
    this.lecturers.add({"id": 5, "name": "Mal. Ibrahim Hassan"});
    this.lecturers.add({"id": 6, "name": "Dr. Abdullahi Aminu"});
    this.lecturers.add({"id": 7, "name": "Mal. Aminu Abbas"});
    this.lecturers.add({"id": 8, "name": "Mr. Matthew Ugochukwu"});
    this.lecturers.add({"id": 9, "name": "Mr. Onyebuchi Amaonwu"});
    this.lecturers.add({"id": 10, "name": "Mal. Adamu Ahmed"});
    this.lecturers.add({"id": 11, "name": "Mal. Ya'u Adamu"});
    this.lecturers.add({"id": 12, "name": "Mal. Musbahu Makama"});
  }

  bool _isLoading = false;

  void saveND1ToDb() async {
    setState(() {
      _isLoading = true;
    });
    String res = await AuthMethods().saveND1(
      LC0M111: selectedLecturer_COM111?.toString(),
      LC0M112: selectedLecturer_COM112?.toString(),
      LC0M113: selectedLecturer_COM113?.toString(),
      LC0M114: selectedLecturer_COM114?.toString(),
      LC0M115: selectedLecturer_COM115?.toString(),
      LC0M121: selectedLecturer_COM121?.toString(),
      LC0M122: selectedLecturer_COM122?.toString(),
      LC0M123: selectedLecturer_COM123?.toString(),
      LC0M124: selectedLecturer_COM124?.toString(),
      LC0M125: selectedLecturer_COM125?.toString(),
      LC0M126: selectedLecturer_COM126?.toString(),
    );

    setState(() {
      _isLoading = false;
    });

    if (res != 'success') {
      showSnackBar(res, context);
    } else {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => Generate_nd1(
          ),
        ),
      );
      //test run
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Colors.green,
          content: Text('Record saved successfully!'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ND1',
          style: Styles.appBarTextStyle,
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15),
            const Center(
              child: Text(
                'Fill in Course Allocation',
                style: Styles.headerTextStyle,
              ),
            ),
            const SizedBox(height: 25),
            const Text(
              'COM111',
              style: Styles.fieldTextStyle,
            ),
            const SizedBox(height: 5),
            FormHelper.dropDownWidget(
              context,
              'select lecturer',
              this.lecturerId_COM111,
              this.lecturers,
              contentPadding: 16,
              paddingLeft: 0,
              paddingRight: 0,
              (onChangedVal) {
                var fid = this.lecturerId_COM111 = onChangedVal;
                print('selected lecturer: $onChangedVal');
                for (var element in this.lecturers) {
                  if (element['id'] == int.parse(fid)) {
                    this.selectedLecturer_COM111 = element['name'];
                  }
                }
                setState(() {
                  print(this.selectedLecturer_COM111);
                });
              },
              (onValidateVal) {
                if (onValidateVal == null) {
                  return 'Please select a lecturer';
                }
                return null;
              },
              borderColor: Color.fromRGBO(20, 10, 38, 1),
              borderRadius: 15,
            ),
            const SizedBox(height: 15),
            const Text(
              'COM112',
              style: Styles.fieldTextStyle,
            ),
            const SizedBox(height: 5),
            FormHelper.dropDownWidget(
              context,
              'select lecturer',
              this.lecturerId_COM112,
              this.lecturers,
              contentPadding: 16,
              paddingLeft: 0,
              paddingRight: 0,
              (onChangedVal) {
                var fid = this.lecturerId_COM112 = onChangedVal;
                print('selected lecturer: $onChangedVal');
                for (var element in this.lecturers) {
                  if (element['id'] == int.parse(fid)) {
                    this.selectedLecturer_COM112 = element['name'];
                  }
                }
                setState(() {
                  print(this.selectedLecturer_COM112);
                });
              },
              (onValidateVal) {
                if (onValidateVal == null) {
                  return 'Please select faculty';
                }
                return null;
              },
              borderColor: Color.fromRGBO(20, 10, 38, 1),
              borderRadius: 15,
            ),
            const SizedBox(height: 15),
            const Text(
              'COM113',
              style: Styles.fieldTextStyle,
            ),
            const SizedBox(height: 5),
            FormHelper.dropDownWidget(
              context,
              'select lecturer',
              this.lecturerId_COM113,
              this.lecturers,
              contentPadding: 16,
              paddingLeft: 0,
              paddingRight: 0,
              (onChangedVal) {
                var fid = this.lecturerId_COM113 = onChangedVal;
                print('selected lecturer: $onChangedVal');
                for (var element in this.lecturers) {
                  if (element['id'] == int.parse(fid)) {
                    this.selectedLecturer_COM113 = element['name'];
                  }
                }
                setState(() {
                  print(this.selectedLecturer_COM113);
                });
              },
              (onValidateVal) {
                if (onValidateVal == null) {
                  return 'Please select a lecturer';
                }
                return null;
              },
              borderColor: Color.fromRGBO(20, 10, 38, 1),
              borderRadius: 15,
            ),
            const SizedBox(height: 15),
            const Text(
              'COM114',
              style: Styles.fieldTextStyle,
            ),
            const SizedBox(height: 5),
            FormHelper.dropDownWidget(
              context,
              'select lecturer',
              this.lecturerId_COM114,
              this.lecturers,
              contentPadding: 16,
              paddingLeft: 0,
              paddingRight: 0,
              (onChangedVal) {
                var fid = this.lecturerId_COM114 = onChangedVal;
                print('selected lecturer: $onChangedVal');
                for (var element in this.lecturers) {
                  if (element['id'] == int.parse(fid)) {
                    this.selectedLecturer_COM114 = element['name'];
                  }
                }
                setState(() {
                  print(this.selectedLecturer_COM114);
                });
              },
              (onValidateVal) {
                if (onValidateVal == null) {
                  return 'Please select a lecturer';
                }
                return null;
              },
              borderColor: Color.fromRGBO(20, 10, 38, 1),
              borderRadius: 15,
            ),
            const SizedBox(height: 15),
            const Text(
              'COM115',
              style: Styles.fieldTextStyle,
            ),
            const SizedBox(height: 5),
            FormHelper.dropDownWidget(
              context,
              'select lecturer',
              this.lecturerId_COM115,
              this.lecturers,
              contentPadding: 16,
              paddingLeft: 0,
              paddingRight: 0,
              (onChangedVal) {
                var fid = this.lecturerId_COM115 = onChangedVal;
                print('selected lecturer: $onChangedVal');
                for (var element in this.lecturers) {
                  if (element['id'] == int.parse(fid)) {
                    this.selectedLecturer_COM115 = element['name'];
                  }
                }
                setState(() {
                  print(this.selectedLecturer_COM115);
                });
              },
              (onValidateVal) {
                if (onValidateVal == null) {
                  return 'Please select a lecturer';
                }
                return null;
              },
              borderColor: Color.fromRGBO(20, 10, 38, 1),
              borderRadius: 15,
            ),
            //second semester
            const SizedBox(height: 15),
            const Text(
              'COM121',
              style: Styles.fieldTextStyle,
            ),
            const SizedBox(height: 5),
            FormHelper.dropDownWidget(
              context,
              'select lecturer',
              this.lecturerId_COM121,
              this.lecturers,
              contentPadding: 16,
              paddingLeft: 0,
              paddingRight: 0,
              (onChangedVal) {
                var fid = this.lecturerId_COM121 = onChangedVal;
                print('selected lecturer: $onChangedVal');
                for (var element in this.lecturers) {
                  if (element['id'] == int.parse(fid)) {
                    this.selectedLecturer_COM121 = element['name'];
                  }
                }
                setState(() {
                  print(this.selectedLecturer_COM121);
                });
              },
              (onValidateVal) {
                if (onValidateVal == null) {
                  return 'Please select a lecturer';
                }
                return null;
              },
              borderColor: Color.fromRGBO(20, 10, 38, 1),
              borderRadius: 15,
            ),
            const SizedBox(height: 15),
            const Text(
              'COM122',
              style: Styles.fieldTextStyle,
            ),
            const SizedBox(height: 5),
            FormHelper.dropDownWidget(
              context,
              'select lecturer',
              this.lecturerId_COM122,
              this.lecturers,
              contentPadding: 16,
              paddingLeft: 0,
              paddingRight: 0,
              (onChangedVal) {
                var fid = this.lecturerId_COM122 = onChangedVal;
                print('selected lecturer: $onChangedVal');
                for (var element in this.lecturers) {
                  if (element['id'] == int.parse(fid)) {
                    this.selectedLecturer_COM122 = element['name'];
                  }
                }
                setState(() {
                  print(this.selectedLecturer_COM122);
                });
              },
              (onValidateVal) {
                if (onValidateVal == null) {
                  return 'Please select faculty';
                }
                return null;
              },
              borderColor: Color.fromRGBO(20, 10, 38, 1),
              borderRadius: 15,
            ),
            const SizedBox(height: 15),
            const Text(
              'COM123',
              style: Styles.fieldTextStyle,
            ),
            const SizedBox(height: 5),
            FormHelper.dropDownWidget(
              context,
              'select lecturer',
              this.lecturerId_COM123,
              this.lecturers,
              contentPadding: 16,
              paddingLeft: 0,
              paddingRight: 0,
              (onChangedVal) {
                var fid = this.lecturerId_COM123 = onChangedVal;
                print('selected lecturer: $onChangedVal');
                for (var element in this.lecturers) {
                  if (element['id'] == int.parse(fid)) {
                    this.selectedLecturer_COM123 = element['name'];
                  }
                }
                setState(() {
                  print(this.selectedLecturer_COM123);
                });
              },
              (onValidateVal) {
                if (onValidateVal == null) {
                  return 'Please select a lecturer';
                }
                return null;
              },
              borderColor: Color.fromRGBO(20, 10, 38, 1),
              borderRadius: 15,
            ),
            const SizedBox(height: 15),
            const Text(
              'COM124',
              style: Styles.fieldTextStyle,
            ),
            const SizedBox(height: 5),
            FormHelper.dropDownWidget(
              context,
              'select lecturer',
              this.lecturerId_COM124,
              this.lecturers,
              contentPadding: 16,
              paddingLeft: 0,
              paddingRight: 0,
              (onChangedVal) {
                var fid = this.lecturerId_COM124 = onChangedVal;
                print('selected lecturer: $onChangedVal');
                for (var element in this.lecturers) {
                  if (element['id'] == int.parse(fid)) {
                    this.selectedLecturer_COM124 = element['name'];
                  }
                }
                setState(() {
                  print(this.selectedLecturer_COM124);
                });
              },
              (onValidateVal) {
                if (onValidateVal == null) {
                  return 'Please select a lecturer';
                }
                return null;
              },
              borderColor: Color.fromRGBO(20, 10, 38, 1),
              borderRadius: 15,
            ),
            const SizedBox(height: 15),
            const Text(
              'COM125',
              style: Styles.fieldTextStyle,
            ),
            const SizedBox(height: 5),
            FormHelper.dropDownWidget(
              context,
              'select lecturer',
              this.lecturerId_COM125,
              this.lecturers,
              contentPadding: 16,
              paddingLeft: 0,
              paddingRight: 0,
              (onChangedVal) {
                var fid = this.lecturerId_COM125 = onChangedVal;
                print('selected lecturer: $onChangedVal');
                for (var element in this.lecturers) {
                  if (element['id'] == int.parse(fid)) {
                    this.selectedLecturer_COM125 = element['name'];
                  }
                }
                setState(() {
                  print(this.selectedLecturer_COM125);
                });
              },
              (onValidateVal) {
                if (onValidateVal == null) {
                  return 'Please select a lecturer';
                }
                return null;
              },
              borderColor: Color.fromRGBO(20, 10, 38, 1),
              borderRadius: 15,
            ),
            const SizedBox(height: 15),
            const Text(
              'COM126',
              style: Styles.fieldTextStyle,
            ),
            const SizedBox(height: 5),
            FormHelper.dropDownWidget(
              context,
              'select lecturer',
              this.lecturerId_COM126,
              this.lecturers,
              contentPadding: 16,
              paddingLeft: 0,
              paddingRight: 0,
              (onChangedVal) {
                var fid = this.lecturerId_COM126 = onChangedVal;
                print('selected lecturer: $onChangedVal');
                for (var element in this.lecturers) {
                  if (element['id'] == int.parse(fid)) {
                    this.selectedLecturer_COM126 = element['name'];
                  }
                }
                setState(() {
                  print(this.selectedLecturer_COM126);
                });
              },
              (onValidateVal) {
                if (onValidateVal == null) {
                  return 'Please select a lecturer';
                }
                return null;
              },
              borderColor: Color.fromRGBO(20, 10, 38, 1),
              borderRadius: 15,
            ),

            const SizedBox(height: 20),
            Center(
              child: SizedBox(
                height: 52,
                width: 280,
                child: ElevatedButton(
                  onPressed: saveND1ToDb,
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
                  child: _isLoading
                      ? const Center(
                          child: CircularProgressIndicator(
                            color: Colors.white,
                          ),
                        )
                      : const Text(
                          'Submit',
                          style: Styles.buttonTextStyle,
                        ),
                ),
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
