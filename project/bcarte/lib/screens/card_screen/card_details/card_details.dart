import 'package:bcarte/constants.dart';
import 'package:bcarte/size_config.dart';
import 'package:flutter/material.dart';

import 'components/Body.dart';

class CardDetail extends StatelessWidget {
  static String routeName = "/card_detail";
  const CardDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Personal", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
        actions: [
          Padding(
            padding: EdgeInsets.only(left: 0, right: 25),
            child: Container(
              width: getProportionateScreenWidth(90),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Edit",
                    style: TextStyle(color: kPrimaryColor, fontSize: 20),
                  ),
                  Icon(Icons.more_horiz, size: 40, color: kPrimaryColor,),
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
