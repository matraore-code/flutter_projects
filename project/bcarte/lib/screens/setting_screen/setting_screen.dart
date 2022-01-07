import 'package:bcarte/size_config.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  static String routeName = "/setting_screen";
  const SettingScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting")
    ));
  }
}
