// ignore_for_file: prefer_const_constructors

import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:scribe/utils/constants.dart';
import 'package:scribe/view/pages/new_note_page.dart';

class MyFloatingButton extends StatelessWidget {
  const MyFloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return OpenContainer(
        closedElevation: 0,
        openElevation: 0,
        openColor: Pallete.backgroundColor,
        closedColor: Colors.transparent,
        transitionDuration: const Duration(milliseconds: 500),
        openBuilder: (context, action) => const NewNotePage(),
        closedBuilder: (context, action) => Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Pallete.secondaryColor,
              ),
              child: const Icon(Icons.add, size: 30,),
            ));
  }
}
