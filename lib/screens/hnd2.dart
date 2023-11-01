import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:timetable/screens/generate_nd1_screen.dart';
import 'package:timetable/screens/home.dart';
import '../resources/auth_methods.dart';
import '../styles/styles.dart';
import '../utils/utils.dart';
import 'generate_hnd2_screen.dart';

class HND2 extends StatefulWidget {
  const HND2({Key? key}) : super(key: key);

  @override
  State<HND2> createState() => _HND2State();
}

class _HND2State extends State<HND2> {
  List<dynamic> lecturers = [];

  String? lecturerId_COM411;
  String? selectedLecturer_COM411;

  String? lecturerId_COM412;
  String? selectedLecturer_COM412;

  String? lecturerId_COM413;
  String? selectedLecturer_COM413;

  String? lecturerId_COM414;
  String? selectedLecturer_COM414;

  String? lecturerId_COM415;
  String? selectedLecturer_COM415;

  //2 sem
  String? lecturerId_COM422;
  String? selectedLecturer_COM422;

  String? lecturerId_COM423;
  String? selectedLecturer_COM423;

  String? lecturerId_COM424;
  String? selectedLecturer_COM424;

  String? lecturerId_COM425;
  String? selectedLecturer_COM425;

  String? lecturerId_COM426;
  String? selectedLecturer_COM426;

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

  void saveHND2ToDb() async {
    setState(() {
      _isLoading = true;
    });
    String res = await AuthMethods().saveHND2(
      LC0M411: selectedLecturer_COM411?.toString(),
      LC0M412: selectedLecturer_COM412?.toString(),
      LC0M413: selectedLecturer_COM413?.toString(),
      LC0M414: selectedLecturer_COM414?.toString(),
      LC0M415: selectedLecturer_COM415?.toString(),
      LC0M422: selectedLecturer_COM422?.toString(),
      LC0M423: selectedLecturer_COM423?.toString(),
      LC0M424: selectedLecturer_COM424?.toString(),
      LC0M425: selectedLecturer_COM425?.toString(),
      LC0M426: selectedLecturer_COM426?.toString(),
    );

    setState(() {
      _isLoading = false;
    });

    if (res != 'success') {
      showSnackBar(res, context);
    } else {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const Generate_hnd2(),
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
          'HND2',
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
              'COM411',
              style: Styles.fieldTextStyle,
            ),
            const SizedBox(height: 5),
            FormHelper.dropDownWidget(
              context,
              'select lecturer',
              this.lecturerId_COM411,
              this.lecturers,
              contentPadding: 16,
              paddingLeft: 0,
              paddingRight: 0,
              (onChangedVal) {
                var fid = this.lecturerId_COM411 = onChangedVal;
                print('selected lecturer: $onChangedVal');
                for (var element in this.lecturers) {
                  if (element['id'] == int.parse(fid)) {
                    this.selectedLecturer_COM411 = element['name'];
                  }
                }
                setState(() {
                  print(this.selectedLecturer_COM411);
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
              'COM412',
              style: Styles.fieldTextStyle,
            ),
            const SizedBox(height: 5),
            FormHelper.dropDownWidget(
              context,
              'select lecturer',
              this.lecturerId_COM412,
              this.lecturers,
              contentPadding: 16,
              paddingLeft: 0,
              paddingRight: 0,
              (onChangedVal) {
                var fid = this.lecturerId_COM412 = onChangedVal;
                print('selected lecturer: $onChangedVal');
                for (var element in this.lecturers) {
                  if (element['id'] == int.parse(fid)) {
                    this.selectedLecturer_COM412 = element['name'];
                  }
                }
                setState(() {
                  print(this.selectedLecturer_COM412);
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
              'COM413',
              style: Styles.fieldTextStyle,
            ),
            const SizedBox(height: 5),
            FormHelper.dropDownWidget(
              context,
              'select lecturer',
              this.lecturerId_COM413,
              this.lecturers,
              contentPadding: 16,
              paddingLeft: 0,
              paddingRight: 0,
              (onChangedVal) {
                var fid = this.lecturerId_COM413 = onChangedVal;
                print('selected lecturer: $onChangedVal');
                for (var element in this.lecturers) {
                  if (element['id'] == int.parse(fid)) {
                    this.selectedLecturer_COM413 = element['name'];
                  }
                }
                setState(() {
                  print(this.selectedLecturer_COM413);
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
              'COM414',
              style: Styles.fieldTextStyle,
            ),
            const SizedBox(height: 5),
            FormHelper.dropDownWidget(
              context,
              'select lecturer',
              this.lecturerId_COM414,
              this.lecturers,
              contentPadding: 16,
              paddingLeft: 0,
              paddingRight: 0,
              (onChangedVal) {
                var fid = this.lecturerId_COM414 = onChangedVal;
                print('selected lecturer: $onChangedVal');
                for (var element in this.lecturers) {
                  if (element['id'] == int.parse(fid)) {
                    this.selectedLecturer_COM414 = element['name'];
                  }
                }
                setState(() {
                  print(this.selectedLecturer_COM414);
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
              'COM415',
              style: Styles.fieldTextStyle,
            ),
            const SizedBox(height: 5),
            FormHelper.dropDownWidget(
              context,
              'select lecturer',
              this.lecturerId_COM415,
              this.lecturers,
              contentPadding: 16,
              paddingLeft: 0,
              paddingRight: 0,
              (onChangedVal) {
                var fid = this.lecturerId_COM415 = onChangedVal;
                print('selected lecturer: $onChangedVal');
                for (var element in this.lecturers) {
                  if (element['id'] == int.parse(fid)) {
                    this.selectedLecturer_COM415 = element['name'];
                  }
                }
                setState(() {
                  print(this.selectedLecturer_COM415);
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
            // 2 sem
            const SizedBox(height: 15),
            const Text(
              'COM422',
              style: Styles.fieldTextStyle,
            ),
            const SizedBox(height: 5),
            FormHelper.dropDownWidget(
              context,
              'select lecturer',
              this.lecturerId_COM422,
              this.lecturers,
              contentPadding: 16,
              paddingLeft: 0,
              paddingRight: 0,
              (onChangedVal) {
                var fid = this.lecturerId_COM422 = onChangedVal;
                print('selected lecturer: $onChangedVal');
                for (var element in this.lecturers) {
                  if (element['id'] == int.parse(fid)) {
                    this.selectedLecturer_COM422 = element['name'];
                  }
                }
                setState(() {
                  print(this.selectedLecturer_COM422);
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
              'COM423',
              style: Styles.fieldTextStyle,
            ),
            const SizedBox(height: 5),
            FormHelper.dropDownWidget(
              context,
              'select lecturer',
              this.lecturerId_COM423,
              this.lecturers,
              contentPadding: 16,
              paddingLeft: 0,
              paddingRight: 0,
              (onChangedVal) {
                var fid = this.lecturerId_COM423 = onChangedVal;
                print('selected lecturer: $onChangedVal');
                for (var element in this.lecturers) {
                  if (element['id'] == int.parse(fid)) {
                    this.selectedLecturer_COM423 = element['name'];
                  }
                }
                setState(() {
                  print(this.selectedLecturer_COM423);
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
              'COM424',
              style: Styles.fieldTextStyle,
            ),
            const SizedBox(height: 5),
            FormHelper.dropDownWidget(
              context,
              'select lecturer',
              this.lecturerId_COM424,
              this.lecturers,
              contentPadding: 16,
              paddingLeft: 0,
              paddingRight: 0,
              (onChangedVal) {
                var fid = this.lecturerId_COM424 = onChangedVal;
                print('selected lecturer: $onChangedVal');
                for (var element in this.lecturers) {
                  if (element['id'] == int.parse(fid)) {
                    this.selectedLecturer_COM424 = element['name'];
                  }
                }
                setState(() {
                  print(this.selectedLecturer_COM424);
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
              'COM425',
              style: Styles.fieldTextStyle,
            ),
            const SizedBox(height: 5),
            FormHelper.dropDownWidget(
              context,
              'select lecturer',
              this.lecturerId_COM425,
              this.lecturers,
              contentPadding: 16,
              paddingLeft: 0,
              paddingRight: 0,
              (onChangedVal) {
                var fid = this.lecturerId_COM425 = onChangedVal;
                print('selected lecturer: $onChangedVal');
                for (var element in this.lecturers) {
                  if (element['id'] == int.parse(fid)) {
                    this.selectedLecturer_COM425 = element['name'];
                  }
                }
                setState(() {
                  print(this.selectedLecturer_COM425);
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
              'COM426',
              style: Styles.fieldTextStyle,
            ),
            const SizedBox(height: 5),
            FormHelper.dropDownWidget(
              context,
              'select lecturer',
              this.lecturerId_COM426,
              this.lecturers,
              contentPadding: 16,
              paddingLeft: 0,
              paddingRight: 0,
              (onChangedVal) {
                var fid = this.lecturerId_COM426 = onChangedVal;
                print('selected lecturer: $onChangedVal');
                for (var element in this.lecturers) {
                  if (element['id'] == int.parse(fid)) {
                    this.selectedLecturer_COM426 = element['name'];
                  }
                }
                setState(() {
                  print(this.selectedLecturer_COM426);
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
                  onPressed: saveHND2ToDb,
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
