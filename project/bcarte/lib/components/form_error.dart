import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../size_config.dart';
import 'custom_suffix_icons.dart';
 
 class formError extends StatelessWidget {
  const formError({
    Key? key,
    required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children:List.generate(
        errors.length, (index) => formErrorText(errors: errors[index])),
    );
  }

  Row formErrorText({String? errors}) {
    return Row(
        children: [
          SvgPicture.asset(
            'assets/icons/Error.svg',
            height: getProportionateScreenHeight(15),
            width: getProportionateScreenWidth(15),
            ),
          SizedBox(
            width: getProportionateScreenWidth(10),
          ),
          Text(errors!)
        ],
      );
  }
}
