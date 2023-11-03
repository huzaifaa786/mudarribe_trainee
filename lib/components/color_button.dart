// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:mudarribe_trainee/utils/colors.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({
    Key? key,
    @required this.title,
    @required this.onPressed,
    this.text,
    this.textcolor,
    this.icon,
    this.buttonWidth = 0.8,
    this.sreenRatio = 1,
    this.gradientColors = const [borderTop, borderDown],
  }) : super(key: key);

  final title;
  final onPressed;
  final sreenRatio;
  final List<Color> gradientColors;
  final text;
  final textcolor;
  final icon;
  final buttonWidth;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * sreenRatio,
        height: 60,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: gradientColors,
              begin: Alignment.topLeft,
              end: Alignment.topRight,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
