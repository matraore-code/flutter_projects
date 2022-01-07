// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../size_config.dart';
import 'components/body.dart';

class OptScreen extends StatelessWidget {
  static String routeName = '/opt';
  const OptScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("OTP Verification"),
      ),
      body: Body(),
    );
  }
}
