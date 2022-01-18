import 'package:bcarte/constants.dart';
import 'package:bcarte/screens/card_screen/edit_card/edit_card.dart';
import 'package:bcarte/size_config.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import 'components/Body.dart';

class CardDetail extends StatelessWidget {
  static String routeName = "/card_detail";
  const CardDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Personal",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(left: 0, right: 25),
            child: Container(
              width: getProportionateScreenWidth(90),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, EditCard.routeName);
                      print("1");
                    },
                    child: Text(
                      "Edit",
                      style: TextStyle(color: kPrimaryColor, fontSize: 20),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.more_horiz,
                      size: 40,
                      color: kPrimaryColor,
                    ),
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
