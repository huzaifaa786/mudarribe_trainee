// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard(
      {super.key,
      @required this.title,
      @required this.image,
      @required this.firstColor,
      @required this.secondColor});
  final title;
  final image;
  final firstColor;
  final secondColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.32,
      decoration: ShapeDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.95, -0.32),
          end: Alignment(-0.95, 0.32),
          colors: [
            firstColor,
            secondColor,
          ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.fill,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 13.0, top: 15.0, right: 13.0),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
