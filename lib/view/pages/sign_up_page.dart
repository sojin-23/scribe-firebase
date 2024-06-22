// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scribe/utils/constants.dart';
import 'package:scribe/view/pages/home_page.dart';
import 'package:scribe/view/pages/sign_in_page.dart';
import 'package:scribe/view/widgets/my_buttons.dart';
import 'package:scribe/view/widgets/my_textfields.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
                      "Sign up",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                MyTextFields(hintText: "Enter your name"),
                SizedBox(
                  height: 10,
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
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  name: "Sign up",
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
                      Text("Already have an account? "),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                        },
                        child: Text(
                          "Sign in",
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
