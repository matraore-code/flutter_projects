// ignore_for_file: prefer_const_constructors

import 'package:bcarte/routes.dart';
import 'package:bcarte/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
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
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
