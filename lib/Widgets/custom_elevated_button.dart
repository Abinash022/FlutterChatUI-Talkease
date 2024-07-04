import 'package:flutter/material.dart';
import 'package:talk_ease/Constants/colors.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color buttonColor;
  final OutlinedBorder shape;
  final double fontSize;
  const CustomElevatedButton(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.buttonColor,
      required this.shape,
      required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      autofocus: false,
      style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(buttonColor),
          shape: WidgetStatePropertyAll(shape)),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: Pallete.mainTextColor,
          fontFamily: 'Nunito',
          fontSize: fontSize,
        ),
      ),
    );
  }
}
