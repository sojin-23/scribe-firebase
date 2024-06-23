// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';
import 'package:scribe/utils/constants.dart';
import 'package:scribe/view/pages/home_page.dart';
import 'package:scribe/view/pages/sign_up_page.dart';
import 'package:scribe/view/widgets/my_textfields.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isPressed = true;
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
                Container(
                  padding: EdgeInsets.only(top: 5, bottom: 5),
                  width: screenWidth,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Pallete.secondaryColor),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        isPressed = false;
                      });

                      // Delay for 3 seconds
                      Future.delayed(Duration(milliseconds: 3500), () {
                        setState(() {
                          isPressed = true;
                        });
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Pallete.secondaryColor),
                    ),
                    child: isPressed
                        ? Text(
                            "Sign in",
                            style: TextStyle(color: Colors.white),
                          ) // Or any initial text
                        : SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              valueColor:
                                  AlwaysStoppedAnimation<Color>(Colors.white),
                            ),
                          ),
                  ),
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
                            PageTransition(
                                duration: Duration(milliseconds: 500),
                                reverseDuration: Duration(milliseconds: 500),
                                child: const SignUpPage(),
                                type: PageTransitionType.rightToLeft),
                          );
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
