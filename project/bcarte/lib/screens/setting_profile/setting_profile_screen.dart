import 'package:flutter/material.dart';
import 'components/body.dart';

class SettingProfile extends StatelessWidget {
  static String routeName = "/setting_profile";
  const SettingProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Body(),
    );
  }
}
