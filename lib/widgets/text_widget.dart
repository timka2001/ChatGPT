import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String label;
  final double fontSize;
  final Color? color;
  final FontWeight? fontWeidget;
  const TextWidget({
    super.key,
    required this.label,
    this.fontSize = 18,
    this.color,
    this.fontWeidget,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
          color: color ?? Colors.white,
          fontSize: fontSize,
          fontWeight: fontWeidget ?? FontWeight.w500),
    );
  }
}
