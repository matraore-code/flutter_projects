// ignore_for_file: prefer_const_constructors

import 'package:bcarte/routes.dart';
import 'package:flutter/material.dart';
import 'screens/getStarted/get_started_screen.dart';
import 'theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'B-CARTE',
      theme: theme(),
      //home: const GetStartedScreen(),
      initialRoute: GetStartedScreen.routeName,
      routes: routes,
    );
  }
}
