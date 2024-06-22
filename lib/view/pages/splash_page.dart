// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:scribe/utils/constants.dart';
import 'package:scribe/view/pages/sign_in_page.dart';
import 'package:scribe/view/pages/sign_up_page.dart';
import 'package:scribe/view/widgets/my_buttons.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "scribe",
                        style: TextStyle(fontSize: 40),
                      ),
                      Text(
                        "your digital memory bank",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    children: [
                      MyButtons(
                        padding: EdgeInsets.only(top: 5, bottom: 5),
                        width: screenWidth,
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ),
                          );
                        },
                        name: "Sign in",
                        buttonColor: Pallete.secondaryColor,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      MyButtons(
                        padding: EdgeInsets.only(top: 5, bottom: 5),
                        width: screenWidth,
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (context) => SignUpPage()),
                          );
                        },
                        name: "Sign up",
                        buttonColor: Pallete.backgroundColor,
                        borderColor: Border.all(color: Pallete.borderColor),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
