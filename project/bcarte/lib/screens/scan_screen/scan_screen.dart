// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bcarte/size_config.dart';
import 'package:flutter/material.dart';

class ScanScreen extends StatelessWidget {
  static String routeName = "/scan_screen";
  const ScanScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Scan")
    ));
  }
}
