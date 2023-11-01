import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:timetable/screens/generate_nd1_screen.dart';
import 'package:timetable/screens/home.dart';
import '../resources/auth_methods.dart';
import '../styles/styles.dart';
import '../utils/utils.dart';
import 'generate_nd2_screen.dart';

class ND2 extends StatefulWidget {
  const ND2({Key? key}) : super(key: key);

  @override
  State<ND2> createState() => _ND2State();
}

class _ND2State extends State<ND2> {
  List<dynamic> lecturers = [];

  String? lecturerId_COM211;
  String? selectedLecturer_COM211;

  String? lecturerId_COM212;
  String? selectedLecturer_COM212;

  String? lecturerId_COM213;
  String? selectedLecturer_COM213;

  String? lecturerId_COM214;
  String? selectedLecturer_COM214;

  String? lecturerId_COM215;
  String? selectedLecturer_COM215;

  String? lecturerId_COM216;
  String? selectedLecturer_COM216;

  //Secon sem
  String? lecturerId_COM221;
  String? selectedLecturer_COM221;

  String? lecturerId_COM222;
  String? selectedLecturer_COM222;

  String? lecturerId_COM223;
  String? selectedLecturer_COM223;

  String? lecturerId_COM224;
  String? selectedLecturer_COM224;

  String? lecturerId_COM225;
  String? selectedLecturer_COM225;

  String? lecturerId_COM226;
  String? selectedLecturer_COM226;

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

  void saveND2ToDb() async {
    setState(() {
      _isLoading = true;
    });
    String res = await AuthMethods().saveND2(
      LC0M211: selectedLecturer_COM211?.toString(),
      LC0M212: selectedLecturer_COM212?.toString(),
      LC0M213: selectedLecturer_COM213?.toString(),
      LC0M214: selectedLecturer_COM214?.toString(),
      LC0M215: selectedLecturer_COM215?.toString(),
      LC0M216: selectedLecturer_COM216?.toString(),
      LC0M221: selectedLecturer_COM221?.toString(),
      LC0M222: selectedLecturer_COM222?.toString(),
      LC0M223: selectedLecturer_COM223?.toString(),
      LC0M224: selectedLecturer_COM224?.toString(),
      LC0M225: selectedLecturer_COM225?.toString(),
      LC0M226: selectedLecturer_COM226?.toString(),
    );

    setState(() {
      _isLoading = false;
    });

    if (res != 'success') {
      showSnackBar(res, context);
    } else {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const Generate_nd2(),
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
          'ND2',
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
              'COM211',
              style: Styles.fieldTextStyle,
            ),
            const SizedBox(height: 5),
            FormHelper.dropDownWidget(
              context,
              'select lecturer',
              this.lecturerId_COM211,
              this.lecturers,
              contentPadding: 16,
              paddingLeft: 0,
              paddingRight: 0,
              (onChangedVal) {
                var fid = this.lecturerId_COM211 = onChangedVal;
                print('selected lecturer: $onChangedVal');
                for (var element in this.lecturers) {
                  if (element['id'] == int.parse(fid)) {
                    this.selectedLecturer_COM211 = element['name'];
                  }
                }
                setState(() {
                  print(this.selectedLecturer_COM211);
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
              'COM212',
              style: Styles.fieldTextStyle,
            ),
            const SizedBox(height: 5),
            FormHelper.dropDownWidget(
              context,
              'select lecturer',
              this.lecturerId_COM212,
              this.lecturers,
              contentPadding: 16,
              paddingLeft: 0,
              paddingRight: 0,
              (onChangedVal) {
                var fid = this.lecturerId_COM212 = onChangedVal;
                print('selected lecturer: $onChangedVal');
                for (var element in this.lecturers) {
                  if (element['id'] == int.parse(fid)) {
                    this.selectedLecturer_COM212 = element['name'];
                  }
                }
                setState(() {
                  print(this.selectedLecturer_COM212);
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
              'COM213',
              style: Styles.fieldTextStyle,
            ),
            const SizedBox(height: 5),
            FormHelper.dropDownWidget(
              context,
              'select lecturer',
              this.lecturerId_COM213,
              this.lecturers,
              contentPadding: 16,
              paddingLeft: 0,
              paddingRight: 0,
              (onChangedVal) {
                var fid = this.lecturerId_COM213 = onChangedVal;
                print('selected lecturer: $onChangedVal');
                for (var element in this.lecturers) {
                  if (element['id'] == int.parse(fid)) {
                    this.selectedLecturer_COM213 = element['name'];
                  }
                }
                setState(() {
                  print(this.selectedLecturer_COM213);
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
              'COM214',
              style: Styles.fieldTextStyle,
            ),
            const SizedBox(height: 5),
            FormHelper.dropDownWidget(
              context,
              'select lecturer',
              this.lecturerId_COM214,
              this.lecturers,
              contentPadding: 16,
              paddingLeft: 0,
              paddingRight: 0,
              (onChangedVal) {
                var fid = this.lecturerId_COM214 = onChangedVal;
                print('selected lecturer: $onChangedVal');
                for (var element in this.lecturers) {
                  if (element['id'] == int.parse(fid)) {
                    this.selectedLecturer_COM214 = element['name'];
                  }
                }
                setState(() {
                  print(this.selectedLecturer_COM214);
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
              'COM215',
              style: Styles.fieldTextStyle,
            ),
            const SizedBox(height: 5),
            FormHelper.dropDownWidget(
              context,
              'select lecturer',
              this.lecturerId_COM215,
              this.lecturers,
              contentPadding: 16,
              paddingLeft: 0,
              paddingRight: 0,
              (onChangedVal) {
                var fid = this.lecturerId_COM215 = onChangedVal;
                print('selected lecturer: $onChangedVal');
                for (var element in this.lecturers) {
                  if (element['id'] == int.parse(fid)) {
                    this.selectedLecturer_COM215 = element['name'];
                  }
                }
                setState(() {
                  print(this.selectedLecturer_COM215);
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
              'COM216',
              style: Styles.fieldTextStyle,
            ),
            const SizedBox(height: 5),
            FormHelper.dropDownWidget(
              context,
              'select lecturer',
              this.lecturerId_COM216,
              this.lecturers,
              contentPadding: 16,
              paddingLeft: 0,
              paddingRight: 0,
              (onChangedVal) {
                var fid = this.lecturerId_COM216 = onChangedVal;
                print('selected lecturer: $onChangedVal');
                for (var element in this.lecturers) {
                  if (element['id'] == int.parse(fid)) {
                    this.selectedLecturer_COM216 = element['name'];
                  }
                }
                setState(() {
                  print(this.selectedLecturer_COM216);
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
              'COM221',
              style: Styles.fieldTextStyle,
            ),
            const SizedBox(height: 5),
            FormHelper.dropDownWidget(
              context,
              'select lecturer',
              this.lecturerId_COM221,
              this.lecturers,
              contentPadding: 16,
              paddingLeft: 0,
              paddingRight: 0,
              (onChangedVal) {
                var fid = this.lecturerId_COM221 = onChangedVal;
                print('selected lecturer: $onChangedVal');
                for (var element in this.lecturers) {
                  if (element['id'] == int.parse(fid)) {
                    this.selectedLecturer_COM221 = element['name'];
                  }
                }
                setState(() {
                  print(this.selectedLecturer_COM221);
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
              'COM222',
              style: Styles.fieldTextStyle,
            ),
            const SizedBox(height: 5),
            FormHelper.dropDownWidget(
              context,
              'select lecturer',
              this.lecturerId_COM222,
              this.lecturers,
              contentPadding: 16,
              paddingLeft: 0,
              paddingRight: 0,
              (onChangedVal) {
                var fid = this.lecturerId_COM222 = onChangedVal;
                print('selected lecturer: $onChangedVal');
                for (var element in this.lecturers) {
                  if (element['id'] == int.parse(fid)) {
                    this.selectedLecturer_COM222 = element['name'];
                  }
                }
                setState(() {
                  print(this.selectedLecturer_COM222);
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
              'COM223',
              style: Styles.fieldTextStyle,
            ),
            const SizedBox(height: 5),
            FormHelper.dropDownWidget(
              context,
              'select lecturer',
              this.lecturerId_COM223,
              this.lecturers,
              contentPadding: 16,
              paddingLeft: 0,
              paddingRight: 0,
              (onChangedVal) {
                var fid = this.lecturerId_COM223 = onChangedVal;
                print('selected lecturer: $onChangedVal');
                for (var element in this.lecturers) {
                  if (element['id'] == int.parse(fid)) {
                    this.selectedLecturer_COM223 = element['name'];
                  }
                }
                setState(() {
                  print(this.selectedLecturer_COM223);
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
              'COM224',
              style: Styles.fieldTextStyle,
            ),
            const SizedBox(height: 5),
            FormHelper.dropDownWidget(
              context,
              'select lecturer',
              this.lecturerId_COM224,
              this.lecturers,
              contentPadding: 16,
              paddingLeft: 0,
              paddingRight: 0,
              (onChangedVal) {
                var fid = this.lecturerId_COM224 = onChangedVal;
                print('selected lecturer: $onChangedVal');
                for (var element in this.lecturers) {
                  if (element['id'] == int.parse(fid)) {
                    this.selectedLecturer_COM224 = element['name'];
                  }
                }
                setState(() {
                  print(this.selectedLecturer_COM224);
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
              'COM225',
              style: Styles.fieldTextStyle,
            ),
            const SizedBox(height: 5),
            FormHelper.dropDownWidget(
              context,
              'select lecturer',
              this.lecturerId_COM225,
              this.lecturers,
              contentPadding: 16,
              paddingLeft: 0,
              paddingRight: 0,
              (onChangedVal) {
                var fid = this.lecturerId_COM225 = onChangedVal;
                print('selected lecturer: $onChangedVal');
                for (var element in this.lecturers) {
                  if (element['id'] == int.parse(fid)) {
                    this.selectedLecturer_COM225 = element['name'];
                  }
                }
                setState(() {
                  print(this.selectedLecturer_COM225);
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
              'COM226',
              style: Styles.fieldTextStyle,
            ),
            const SizedBox(height: 5),
            FormHelper.dropDownWidget(
              context,
              'select lecturer',
              this.lecturerId_COM226,
              this.lecturers,
              contentPadding: 16,
              paddingLeft: 0,
              paddingRight: 0,
              (onChangedVal) {
                var fid = this.lecturerId_COM226 = onChangedVal;
                print('selected lecturer: $onChangedVal');
                for (var element in this.lecturers) {
                  if (element['id'] == int.parse(fid)) {
                    this.selectedLecturer_COM226 = element['name'];
                  }
                }
                setState(() {
                  print(this.selectedLecturer_COM226);
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
                  onPressed: saveND2ToDb,
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
