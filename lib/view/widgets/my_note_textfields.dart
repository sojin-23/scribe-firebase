import 'package:flutter/material.dart';
import 'package:scribe/utils/constants.dart';

class MyNoteFields extends StatelessWidget {
  final String hintText;
  final TextStyle? hintStyle;
  final TextStyle? textStyle;
  const MyNoteFields({super.key, required this.hintText, this.hintStyle, this.textStyle});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: textStyle,
      cursorColor: Pallete.secondaryColor,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: hintStyle,
        border: InputBorder.none
      ),
    );
  }
}