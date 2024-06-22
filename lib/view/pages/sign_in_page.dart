// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scribe/utils/constants.dart';
import 'package:scribe/view/pages/home_page.dart';
import 'package:scribe/view/pages/sign_up_page.dart';
import 'package:scribe/view/widgets/my_buttons.dart';
import 'package:scribe/view/widgets/my_textfields.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Sign in",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                MyTextFields(
                  hintText: "Enter your email",
                ),
                SizedBox(
                  height: 10,
                ),
                MyTextFields(
                  hintText: "Enter your password",
                ),
                SizedBox(
                  height: 30,
                ),
                MyButtons(
                  buttonColor: Pallete.secondaryColor,
                  onPressed: () {
                    HapticFeedback.mediumImpact();
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  name: "Sign in",
                  width: screenWidth,
                  padding: EdgeInsets.only(top: 5, bottom: 5),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account? "),
                      TextButton(
                        onPressed: () {
                          HapticFeedback.mediumImpact();
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => SignUpPage()));
                        },
                        child: Text(
                          "Sign up",
                          style: TextStyle(color: Pallete.secondaryColor),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
