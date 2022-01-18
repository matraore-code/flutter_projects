import 'package:bcarte/constants.dart';
import 'package:bcarte/size_config.dart';
import 'package:flutter/material.dart';

import 'component/Body.dart';

class EditCard extends StatelessWidget {
  static String routeName = "/edit_card";
  const EditCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Edit",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(left: 0, right: 10),
            child: Container(
              width: getProportionateScreenWidth(50),
              child: Row(
                children: [
                  Text(
                    "Save",
                    style: TextStyle(color: kPrimaryColor, fontSize: 20),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      body: Body(),
    );
  }
}
