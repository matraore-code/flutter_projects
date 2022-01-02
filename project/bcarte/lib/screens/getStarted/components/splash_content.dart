import 'package:flutter/material.dart';

import '../../../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    this.text,
    this.image,
  }) : super(key: key);
  final String? text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // Image.asset(
        //   'assets/images/logon.png',
        //   height: getProportionateScreenWidth(50),
        // ),
        Text(text!,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: getProportionateScreenWidth(15),
          fontStyle: FontStyle.italic
        ),
        ),
        Image.asset(
          image!,
          height: getProportionateScreenHeight(305),
          width: getProportionateScreenWidth(275),
        )
      ],
    );
  }
}
