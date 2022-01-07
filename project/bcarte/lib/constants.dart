// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'size_config.dart';

const kPrimaryColor = Color(0xFFEC595A);
const kPrimaryGradiantColor = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF6C87FD), Color(0xFF6FADFC)]);
const kSecondaryColor = Color(0xFFFD7E77);
const kAnimationDuration = Duration(milliseconds: 400);

//form Error

final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please enter your email";
const String kInvalidationEmailError = "Please enter a valid email";
const String kPassNullError = "Please fill your password";
const String kPassShortError = "Password is too short";
const String kNameNullError = "Please enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";
const String kMatchPassError = "Passwords don't match";

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: Colors.black38),
  );
}
