// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bcarte/size_config.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  static String routeName = "/contact_screen";
  const ContactScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact"),
        iconTheme: IconThemeData(color: Color(0xFFEC595A)),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {},
              child: Icon(Icons.location_on),
            ),
          ),
        ],
      ),
    );
  }
}
