// import 'package:flutter/material.dart';
// import 'package:pdf/pdf.dart';
// import 'package:printing/printing.dart';
// import 'package:timetable/screens/printabledata_nd1f.dart';
//
// import '../styles/styles.dart';
// import 'package:pdf/widgets.dart' as pw;
//
// class SavePdfBtn extends StatelessWidget {
//   const SavePdfBtn({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: SizedBox(
//         height: 52,
//         width: 280,
//         child: ElevatedButton(
//           onPressed: () => printDoc(),
//           style: ButtonStyle(
//             backgroundColor: MaterialStateProperty.all(
//               Colors.black45,
//             ),
//             shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//               RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(10),
//               ),
//             ),
//           ),
//           child: const Text(
//             'Save pdf',
//             style: Styles.buttonTextStyle,
//             textAlign: TextAlign.center,
//           ),
//         ),
//       ),
//     );
//   }
//
//   Future<void> printDoc() async {
//     final doc = pw.Document();
//     doc.addPage(pw.Page(
//         pageFormat: PdfPageFormat.a4,
//         build: (pw.Context context) {
//           return buildPrintableData();
//         }));
//     await Printing.layoutPdf(
//         onLayout: (PdfPageFormat format) async => doc.save());
//   }
// }
