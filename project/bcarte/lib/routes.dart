import 'package:bcarte/screens/sign_in/sign_in_screen.dart';
import 'package:bcarte/screens/getStarted/get_started_screen.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes = {
  GetStartedScreen.routeName: (context) => GetStartedScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
};
