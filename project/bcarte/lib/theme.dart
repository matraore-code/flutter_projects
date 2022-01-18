// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0,
        iconTheme: iconTheme(),
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          // fontSize:
        )),
    //inputDecorationTheme: inputDecorationTheme(),
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Poppins",
  );
}

IconThemeData iconTheme() => IconThemeData(color: Colors.black);

// InputDecorationTheme inputDecorationTheme() {
//   OutlineInputBorder outlineInputBorder = OutlineInputBorder(
//               borderRadius: BorderRadius.circular(28),
//               borderSide: BorderSide(color: Colors.black38),
//               gapPadding: 10
//             );
//   return InputDecorationTheme(
//             floatingLabelBehavior: FloatingLabelBehavior.always,
//             enabledBorder: outlineInputBorder,
//             focusedBorder: outlineInputBorder,
//             border: outlineInputBorder,
//           );
// }
