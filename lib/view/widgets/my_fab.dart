import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scribe/utils/constants.dart';

class MyFloatingButton extends StatelessWidget {
  final VoidCallback onPressed;
  const MyFloatingButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Pallete.secondaryColor,
      onPressed: onPressed,
      child: const Icon(
        CupertinoIcons.add,
        color: Colors.white,
      ),
    );
  }
}
