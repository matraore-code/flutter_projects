
// ignore_for_file: prefer_const_constructors

import 'package:bcarte/screens/card_screen/card_details/card_details.dart';
import 'package:bcarte/screens/card_screen/card_screen.dart';
import 'package:bcarte/screens/contact_screen/contact_screen.dart';
import 'package:bcarte/screens/forgot_pass.dart/forgot_password_screen.dart';
import 'package:bcarte/screens/home_screen/home_screen.dart';
import 'package:bcarte/screens/opt/opt_screen.dart';
import 'package:bcarte/screens/scan_screen/scan_screen.dart';
import 'package:bcarte/screens/setting_profile/setting_profile_screen.dart';
import 'package:bcarte/screens/setting_screen/setting_screen.dart';
import 'package:bcarte/screens/sign_in/sign_in_screen.dart';
import 'package:bcarte/screens/getStarted/get_started_screen.dart';
import 'package:bcarte/screens/sign_up/sign_up_screen.dart';
import 'package:bcarte/screens/splash_screen/splash_screen.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName : (context) => SplashScreen(),
  GetStartedScreen.routeName: (context) => GetStartedScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  SettingProfile.routeName: (context) => SettingProfile(),
  OptScreen.routeName: (context) => OptScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  ContactScreen.routeName: (context) => ContactScreen(),
  ScanScreen.routeName: (context) => ScanScreen(),
  SettingScreen.routeName: (context) => SettingScreen(),
  CardScreen.routeName: (context) => CardScreen(),
  CardDetail.routeName:(context) => CardDetail(),
};
