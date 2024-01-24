import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:timetable/screens/generate_nd1_screen.dart';
import 'package:timetable/screens/home.dart';
import '../../resources/auth_methods.dart';
import '../../styles/styles.dart';
import '../../utils/utils.dart';
import '../generate_hnd1_screen.dart';

class HND1 extends StatefulWidget {
  const HND1({Key? key}) : super(key: key);

  @override
  State<HND1> createState() => _HND1State();
}

class _HND1State extends State<HND1> {
  List<dynamic> lecturers = [];

  String? lecturerId_COM311;
  String? selectedLecturer_COM311;

  String? lecturerId_COM312;
  String? selectedLecturer_COM312;

  String? lecturerId_COM313;
  String? selectedLecturer_COM313;

  String? lecturerId_COM314;
  String? selectedLecturer_COM314;

  String? lecturerId_COM315;
  String? selectedLecturer_COM315;
  //2 sem
  String? lecturerId_COM321;
  String? selectedLecturer_COM321;

  String? lecturerId_COM322;
  String? selectedLecturer_COM322;

  String? lecturerId_COM323;
  String? selectedLecturer_COM323;

  String? lecturerId_COM324;
  String? selectedLecturer_COM324;

  String? lecturerId_COM325;
  String? selectedLecturer_COM325;

  String? lecturerId_COM326;
  String? selectedLecturer_COM326;

  String? lecturerId_COM327;
  String? selectedLecturer_COM327;

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

  void saveHND1ToDb() async {
    setState(() {
      _isLoading = true;
    });
    String res = await AuthMethods().saveHND1(
      LC0M311: selectedLecturer_COM311?.toString(),
      LC0M312: selectedLecturer_COM312?.toString(),
      LC0M313: selectedLecturer_COM313?.toString(),
      LC0M314: selectedLecturer_COM314?.toString(),
      LC0M315: selectedLecturer_COM315?.toString(),
      LC0M321: selectedLecturer_COM321?.toString(),
      LC0M322: selectedLecturer_COM322?.toString(),
      LC0M323: selectedLecturer_COM323?.toString(),
      LC0M324: selectedLecturer_COM324?.toString(),
      LC0M325: selectedLecturer_COM325?.toString(),
      LC0M326: selectedLecturer_COM326?.toString(),
      LC0M327: selectedLecturer_COM327?.toString(),
    );

    setState(() {
      _isLoading = false;
    });

    if (res != 'success') {
      showSnackBar(res, context);
    } else {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const Generate_hnd1(),
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
          'HND1',
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
              'COM311',
              style: Styles.fieldTextStyle,
            ),
            const SizedBox(height: 5),
            FormHelper.dropDownWidget(
              context,
              'select lecturer',
              this.lecturerId_COM311,
              this.lecturers,
              contentPadding: 16,
              paddingLeft: 0,
              paddingRight: 0,
              (onChangedVal) {
                var fid = this.lecturerId_COM311 = onChangedVal;
                print('selected lecturer: $onChangedVal');
                for (var element in this.lecturers) {
                  if (element['id'] == int.parse(fid)) {
                    this.selectedLecturer_COM311 = element['name'];
                  }
                }
                setState(() {
                  print(this.selectedLecturer_COM311);
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
              'COM312',
              style: Styles.fieldTextStyle,
            ),
            const SizedBox(height: 5),
            FormHelper.dropDownWidget(
              context,
              'select lecturer',
              this.lecturerId_COM312,
              this.lecturers,
              contentPadding: 16,
              paddingLeft: 0,
              paddingRight: 0,
              (onChangedVal) {
                var fid = this.lecturerId_COM312 = onChangedVal;
                print('selected lecturer: $onChangedVal');
                for (var element in this.lecturers) {
                  if (element['id'] == int.parse(fid)) {
                    this.selectedLecturer_COM312 = element['name'];
                  }
                }
                setState(() {
                  print(this.selectedLecturer_COM312);
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
              'COM313',
              style: Styles.fieldTextStyle,
            ),
            const SizedBox(height: 5),
            FormHelper.dropDownWidget(
              context,
              'select lecturer',
              this.lecturerId_COM313,
              this.lecturers,
              contentPadding: 16,
              paddingLeft: 0,
              paddingRight: 0,
              (onChangedVal) {
                var fid = this.lecturerId_COM313 = onChangedVal;
                print('selected lecturer: $onChangedVal');
                for (var element in this.lecturers) {
                  if (element['id'] == int.parse(fid)) {
                    this.selectedLecturer_COM313 = element['name'];
                  }
                }
                setState(() {
                  print(this.selectedLecturer_COM313);
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
              'COM314',
              style: Styles.fieldTextStyle,
            ),
            const SizedBox(height: 5),
            FormHelper.dropDownWidget(
              context,
              'select lecturer',
              this.lecturerId_COM314,
              this.lecturers,
              contentPadding: 16,
              paddingLeft: 0,
              paddingRight: 0,
              (onChangedVal) {
                var fid = this.lecturerId_COM314 = onChangedVal;
                print('selected lecturer: $onChangedVal');
                for (var element in this.lecturers) {
                  if (element['id'] == int.parse(fid)) {
                    this.selectedLecturer_COM314 = element['name'];
                  }
                }
                setState(() {
                  print(this.selectedLecturer_COM314);
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
              'COM315',
              style: Styles.fieldTextStyle,
            ),
            const SizedBox(height: 5),
            FormHelper.dropDownWidget(
              context,
              'select lecturer',
              this.lecturerId_COM315,
              this.lecturers,
              contentPadding: 16,
              paddingLeft: 0,
              paddingRight: 0,
              (onChangedVal) {
                var fid = this.lecturerId_COM315 = onChangedVal;
                print('selected lecturer: $onChangedVal');
                for (var element in this.lecturers) {
                  if (element['id'] == int.parse(fid)) {
                    this.selectedLecturer_COM315 = element['name'];
                  }
                }
                setState(() {
                  print(this.selectedLecturer_COM315);
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
            //2 sem
            const SizedBox(height: 15),
            const Text(
              'COM321',
              style: Styles.fieldTextStyle,
            ),
            const SizedBox(height: 5),
            FormHelper.dropDownWidget(
              context,
              'select lecturer',
              this.lecturerId_COM321,
              this.lecturers,
              contentPadding: 16,
              paddingLeft: 0,
              paddingRight: 0,
              (onChangedVal) {
                var fid = this.lecturerId_COM321 = onChangedVal;
                print('selected lecturer: $onChangedVal');
                for (var element in this.lecturers) {
                  if (element['id'] == int.parse(fid)) {
                    this.selectedLecturer_COM321 = element['name'];
                  }
                }
                setState(() {
                  print(this.selectedLecturer_COM311);
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
              'COM322',
              style: Styles.fieldTextStyle,
            ),
            const SizedBox(height: 5),
            FormHelper.dropDownWidget(
              context,
              'select lecturer',
              this.lecturerId_COM322,
              this.lecturers,
              contentPadding: 16,
              paddingLeft: 0,
              paddingRight: 0,
              (onChangedVal) {
                var fid = this.lecturerId_COM322 = onChangedVal;
                print('selected lecturer: $onChangedVal');
                for (var element in this.lecturers) {
                  if (element['id'] == int.parse(fid)) {
                    this.selectedLecturer_COM322 = element['name'];
                  }
                }
                setState(() {
                  print(this.selectedLecturer_COM322);
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
              'COM323',
              style: Styles.fieldTextStyle,
            ),
            const SizedBox(height: 5),
            FormHelper.dropDownWidget(
              context,
              'select lecturer',
              this.lecturerId_COM323,
              this.lecturers,
              contentPadding: 16,
              paddingLeft: 0,
              paddingRight: 0,
              (onChangedVal) {
                var fid = this.lecturerId_COM323 = onChangedVal;
                print('selected lecturer: $onChangedVal');
                for (var element in this.lecturers) {
                  if (element['id'] == int.parse(fid)) {
                    this.selectedLecturer_COM323 = element['name'];
                  }
                }
                setState(() {
                  print(this.selectedLecturer_COM323);
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
              'COM324',
              style: Styles.fieldTextStyle,
            ),
            const SizedBox(height: 5),
            FormHelper.dropDownWidget(
              context,
              'select lecturer',
              this.lecturerId_COM324,
              this.lecturers,
              contentPadding: 16,
              paddingLeft: 0,
              paddingRight: 0,
              (onChangedVal) {
                var fid = this.lecturerId_COM324 = onChangedVal;
                print('selected lecturer: $onChangedVal');
                for (var element in this.lecturers) {
                  if (element['id'] == int.parse(fid)) {
                    this.selectedLecturer_COM324 = element['name'];
                  }
                }
                setState(() {
                  print(this.selectedLecturer_COM324);
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
              'COM325',
              style: Styles.fieldTextStyle,
            ),
            const SizedBox(height: 5),
            FormHelper.dropDownWidget(
              context,
              'select lecturer',
              this.lecturerId_COM325,
              this.lecturers,
              contentPadding: 16,
              paddingLeft: 0,
              paddingRight: 0,
              (onChangedVal) {
                var fid = this.lecturerId_COM325 = onChangedVal;
                print('selected lecturer: $onChangedVal');
                for (var element in this.lecturers) {
                  if (element['id'] == int.parse(fid)) {
                    this.selectedLecturer_COM325 = element['name'];
                  }
                }
                setState(() {
                  print(this.selectedLecturer_COM325);
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
            //////
            const SizedBox(height: 15),
            const Text(
              'COM326',
              style: Styles.fieldTextStyle,
            ),
            const SizedBox(height: 5),
            FormHelper.dropDownWidget(
              context,
              'select lecturer',
              this.lecturerId_COM326,
              this.lecturers,
              contentPadding: 16,
              paddingLeft: 0,
              paddingRight: 0,
              (onChangedVal) {
                var fid = this.lecturerId_COM326 = onChangedVal;
                print('selected lecturer: $onChangedVal');
                for (var element in this.lecturers) {
                  if (element['id'] == int.parse(fid)) {
                    this.selectedLecturer_COM326 = element['name'];
                  }
                }
                setState(() {
                  print(this.selectedLecturer_COM326);
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
              'COM327',
              style: Styles.fieldTextStyle,
            ),
            const SizedBox(height: 5),
            FormHelper.dropDownWidget(
              context,
              'select lecturer',
              this.lecturerId_COM327,
              this.lecturers,
              contentPadding: 16,
              paddingLeft: 0,
              paddingRight: 0,
              (onChangedVal) {
                var fid = this.lecturerId_COM327 = onChangedVal;
                print('selected lecturer: $onChangedVal');
                for (var element in this.lecturers) {
                  if (element['id'] == int.parse(fid)) {
                    this.selectedLecturer_COM327 = element['name'];
                  }
                }
                setState(() {
                  print(this.selectedLecturer_COM327);
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

            const SizedBox(height: 20),
            Center(
              child: SizedBox(
                height: 52,
                width: 280,
                child: ElevatedButton(
                  onPressed: saveHND1ToDb,
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
