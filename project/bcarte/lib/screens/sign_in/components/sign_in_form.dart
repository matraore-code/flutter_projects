// ignore_for_file: prefer_const_constructors

import 'package:bcarte/components/custom_suffix_icons.dart';
import 'package:bcarte/components/default_button.dart';
import 'package:bcarte/components/form_error.dart';
import 'package:bcarte/screens/forgot_pass.dart/forgot_password_screen.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SignForm extends StatefulWidget {
  const SignForm({Key? key}) : super(key: key);

  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  bool remenber = false;
  final List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailTextForm(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildPasswordForm(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          Row(
            children: [
              Checkbox(
                  value: remenber,
                  activeColor: kPrimaryColor,
                  onChanged: (value) {
                    setState(() {
                      remenber = value!;
                    });
                  }),
              const Text("Remember me"),
              const Spacer(),
               GestureDetector(
                onTap: () => Navigator.pushNamed(
                    context, ForgotPasswordScreen.routeName),
                child: Text(
                  "Forgot Password",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
          formError(errors: errors),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          DefaultButton(
            text: 'Sign In',
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
              }
            },
          )
        ],
      ),
    );
  }

  TextFormField buildPasswordForm() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPassNullError)) {
          setState(() {
            errors.remove(kPassNullError);
          });
        } else if (value.length >= 8 && errors.contains(kPassNullError)) {
          setState(() {
            errors.remove(kPassShortError);
          });
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kPassNullError)) {
          setState(() {
            errors.add(kPassNullError);
          });
        } else if (value.length < 8 && !errors.contains(kPassShortError)) {
          setState(() {
            errors.add(kPassShortError);
          });
        }
        return null;
      },
      decoration: InputDecoration(
          labelText: "Password",
          hintText: "Enter your password",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: customSuffixIcon(
            svgIcon: 'assets/icons/Lock.svg',
          )),
    );
  }

  TextFormField buildEmailTextForm() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          setState(() {
            errors.remove(kEmailNullError);
          });
        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(kInvalidationEmailError)) {
          setState(() {
            errors.remove(kInvalidationEmailError);
          });
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            errors.add(kEmailNullError);
          });
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidationEmailError)) {
          setState(() {
            errors.add(kInvalidationEmailError);
          });
        }
        return null;
      },
      decoration: InputDecoration(
          labelText: "Email",
          hintText: "Enter your mail",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: customSuffixIcon(
            svgIcon: 'assets/icons/Mail.svg',
          )),
    );
  }
}
