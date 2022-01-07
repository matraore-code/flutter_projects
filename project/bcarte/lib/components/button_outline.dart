import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class WhiteButton extends StatelessWidget {
  const WhiteButton({
    Key? key,
    this.text,
    this.press,
  }) : super(key: key);
  final String? text;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: TextButton(
        style: TextButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          primary: kPrimaryColor,
          backgroundColor: Colors.transparent,
          side: BorderSide(color: kPrimaryColor, width: 0.5),
        ),
        onPressed: press as void Function()?,
        child: Text(
          text!,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            color: kPrimaryColor,
          ),
        ),
      ),
    );
  }
}