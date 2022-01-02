
import 'package:bcarte/screens/forgot_pass.dart/forgot_password_screen.dart';
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
};
