import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  final VoidCallback onPressed;
  final String name;
  final Color? buttonColor;
  final BoxBorder? borderColor;
  final double width;
  final EdgeInsetsGeometry padding;
  const MyButtons(
      {super.key,
      required this.onPressed,
      required this.name,
      this.buttonColor,
      this.borderColor,
      required this.width,
      required this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: borderColor,
          color: buttonColor),
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(buttonColor),
        ),
        child: Text(
          name,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
