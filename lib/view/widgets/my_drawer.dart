
// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:emerge_alert_dialog/emerge_alert_dialog.dart';
import 'package:flutter/material.dart';
import 'package:scribe/utils/constants.dart';
import 'package:scribe/view/pages/splash_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Pallete.tertiaryColors,
      child: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Home",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                _showMyDialog(context);
              },
              child: Text(
                "About us",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                _showSignOut(context);
              },
              child: Text(
                "Sign out",
                style: TextStyle(color: Colors.red, fontSize: 15),
              ),
            ),
            Spacer(),
            Text(
              'Version',
              style: TextStyle(color: Colors.grey),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10, top: 5),
              child: Text(
                '3.19',
                style: TextStyle(color: Colors.grey),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _showMyDialog(BuildContext context) async {
    await showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
          child: EmergeAlertDialog(
            animationDuration: 300,
            alignment: Alignment.centerLeft,
            emergeAlertDialogOptions: EmergeAlertDialogOptions(
                title: const Text(
                  "About us",
                  textAlign: TextAlign.center,
                ),
                backgroundColor: Pallete.tertiaryColors,
                content: Text(
                    "Hello everyone! i am sojin and am a Flutter Developer who builds efficient Android and IOS Apps"),
                actions: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Pallete.secondaryColor),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Close'))
                ]),
          ),
        );
      },
    );
  }

  void _showSignOut(BuildContext context) async {
    await showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
          child: EmergeAlertDialog(
            animationDuration: 300,
            alignment: Alignment.centerLeft,
            emergeAlertDialogOptions: EmergeAlertDialogOptions(
                title: const Text(
                  "Are you sure?",
                ),
                backgroundColor: Pallete.tertiaryColors,
                content: Text(
                  "Are you sure to sign out?",
                ),
                actions: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        side: BorderSide(color: Pallete.borderColor),
                        backgroundColor: Pallete.tertiaryColors),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Cancel'),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Pallete.secondaryColor),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SplashPage(),
                        ),
                      );
                    },
                    child: Text('Confirm'),
                  ),
                ]),
          ),
        );
      },
    );
  }
}