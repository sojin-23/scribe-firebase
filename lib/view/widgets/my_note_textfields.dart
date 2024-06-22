import 'package:flutter/material.dart';
import 'package:scribe/utils/constants.dart';

class MyNoteFields extends StatelessWidget {
  final String hintText;
  final TextStyle? hintStyle;
  final TextEditingController? controller;
  final TextStyle? textStyle;
  const MyNoteFields({super.key, required this.hintText, this.hintStyle, this.textStyle, this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
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