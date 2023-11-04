// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class Fonts26 extends StatelessWidget {
  const Fonts26(
      {super.key,
      this.title,
      this.fontweight = FontWeight.w600,
      this.color = Colors.white});
  final title;
  final fontweight;
  final color;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontFamily: "Poppins",
        fontSize: 26,
        fontWeight: fontweight,
        color: color,
      ),
      textAlign: TextAlign.left,
    );
  }
}
