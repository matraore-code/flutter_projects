import 'package:flutter/material.dart';

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
