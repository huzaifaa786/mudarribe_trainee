// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:mudarribe_trainee/utils/colors.dart';
// import 'package:klicks_app/values/colors.dart';

class FragmentOne extends StatefulWidget {
  const FragmentOne({super.key, required this.controller});
  final PageController controller;

  @override
  State<FragmentOne> createState() => _FragmentOneState();
}

class _FragmentOneState extends State<FragmentOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          // padding: EdgeInsets.only(top: 20),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(
                  'assets/images/onboard1.png',
                ),
                fit: BoxFit.fill,
                height: MediaQuery.of(context).size.height * 0.45,
              ),
              Container(
                  padding:
                      EdgeInsets.only(top: 30, right: 8, left: 8, bottom: 50),
                  child: Text(
                    "Find The best Personal\nTrainer",
                    style: const TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      color: white,
                      // height: 84 / 28,
                    ),
                    textAlign: TextAlign.center,
                  )),
            ],
          ),
        ),
      )),
    );
  }
}
