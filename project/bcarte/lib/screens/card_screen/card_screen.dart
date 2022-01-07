// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bcarte/size_config.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class CardScreen extends StatelessWidget {
  static String routeName = "/card_screen";
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return SafeArea(
      top: true,
      child: Container(
        padding: EdgeInsets.only(top: 10),
        child: Scaffold(
          
          appBar: AppBar(
            title: Image.asset(
              "assets/images/logon.png",
              width: getProportionateScreenWidth(110),
              height: getProportionateScreenHeight(110),
            ),
            iconTheme: IconThemeData(color: Color(0xFFEC595A)),
            actions: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(Icons.add_circle, size: 50,),
                ),
              ),
            ],
          ),
          body: Body()     
        ),
      ),
    );
  }
}
