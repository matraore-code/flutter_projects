// ignore_for_file: unused_local_variable, prefer_const_declarations

import 'package:bcarte/size_config.dart';
import 'package:flutter/material.dart';

class NavigationDrawerWidget extends StatelessWidget {
  NavigationDrawerWidget({Key? key}) : super(key: key);
  final padding =
      EdgeInsets.symmetric(horizontal: getProportionateScreenHeight(20));

  @override
  Widget build(BuildContext context) {
    final isCollapsed = false;
    return Drawer(
      child: Container(
      ),
    );
  }
}
