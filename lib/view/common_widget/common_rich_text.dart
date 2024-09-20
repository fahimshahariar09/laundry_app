// import 'package:flutter/material.dart';
//
// class CommonRichText extends StatelessWidget {
//   const CommonRichText(
//       {super.key,
//       required this.titel,
//       required this.subtitel,
//       this.subColor,
//       this.titelColor,
//       this.titelSize,
//       this.titelfWeight,
//       this.subSize,
//       this.subfWeight});
//
//   final String titel;
//   final Color? titelColor;
//   final double? titelSize;
//   final FontWeight? titelfWeight;
//   final String subtitel;
//   final Color? subColor;
//   final double? subSize;
//   final FontWeight? subfWeight;
//
//   @override
//   Widget build(BuildContext context) {
//     return RichText(
//         text: TextSpan(children: [
//       TextSpan(
//           text: titel,
//           style: TextStyle(
//               color: titelColor ?? Colors.black,
//               fontSize: titelSize ?? 14,
//               fontWeight: titelfWeight ?? FontWeight.w400)),
//       TextSpan(
//           text: subtitel,
//           style: TextStyle(
//               color: subColor ?? Colors.blue,
//               fontSize: subSize ?? 16,
//               fontWeight: subfWeight ?? FontWeight.w600))
//     ]));
//   }
// }
