// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, duplicate_ignore

import 'package:bcarte/components/social_card.dart';
import 'package:bcarte/constants.dart';
import 'package:bcarte/screens/forgot_pass.dart/forgot_password_screen.dart';
import 'package:bcarte/screens/sign_in/components/sign_in_form.dart';
import 'package:bcarte/screens/sign_up/sign_up_screen.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

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
                SizedBox(
                  height: SizeConfig.screenHeight * 0.04,
                ),

                // ignore: prefer_const_constructors
                Text("Welcome Back",
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: getProportionateScreenWidth(28),
                        fontWeight: FontWeight.w500)),
                Text(
                  "Sign in with your mail and your password \nor continue with your social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.08,
                ),
                SignForm(),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.08,
                ),

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
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                NoAccountText()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account ?",
          style:
              TextStyle(fontSize: getProportionateScreenWidth(16)),
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, SignUpScreen.routeName),
          child: Text("Sign Up",
              style: TextStyle(
                  fontSize: getProportionateScreenWidth(16),
                  color: kPrimaryColor)),
        )
      ],
    );
  }
}
