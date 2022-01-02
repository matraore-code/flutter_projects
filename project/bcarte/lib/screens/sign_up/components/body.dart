// ignore_for_file: prefer_const_constructors

import 'package:bcarte/components/social_card.dart';
import 'package:bcarte/screens/sign_up/components/sign_up_form.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import '../sign_up_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04), // 4%
                Text("Register Account"),
                Text(
                  "Complete your details or continue \nwith social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SignUpForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   SocialCard(
                      icons: "assets/images/icons/google.svg",
                      press: () {},
                    ),
                    SocialCard(
                      icons: "assets/images/icons/linkedin.svg",
                      press: () {},
                    ),
                    SocialCard(
                      icons: "assets/images/icons/twitter.svg",
                      press: () {},
                    )
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                Text(
                  'By continuing your confirm that you agree \nwith our Term and Condition',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.caption,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}