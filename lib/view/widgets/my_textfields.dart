import 'package:flutter/material.dart';
import 'package:scribe/utils/constants.dart';

class MyTextFields extends StatefulWidget {
  final String hintText;
  final TextInputType? keyBoardType;
  const MyTextFields({super.key, this.keyBoardType, required this.hintText});

  @override
  State<MyTextFields> createState() => _MyTextFieldsState();
}

class _MyTextFieldsState extends State<MyTextFields> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Pallete.secondaryColor,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: const TextStyle(color: Pallete.borderColor),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Pallete.secondaryColor),
          borderRadius: BorderRadius.circular(10),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
