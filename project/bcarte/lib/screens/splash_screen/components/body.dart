import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () => Navigator.pushNamed(context, '/getStarted'));
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Lottie.asset('assets/images/logon.json', repeat: false)
        ),
      ],
    );
  }
}
