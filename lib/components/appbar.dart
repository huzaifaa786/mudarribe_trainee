// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TopScreenBar extends StatelessWidget {
  const TopScreenBar({
    super.key,
    this.mytext,
  });

  final mytext;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: MediaQuery.sizeOf(context).width,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 20),
            child: SvgPicture.asset(
              'assets/images/arrowleft.svg',
            ),
          ),
          Text(
            mytext,
            style: TextStyle(
              fontFamily: "Poppins",
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
