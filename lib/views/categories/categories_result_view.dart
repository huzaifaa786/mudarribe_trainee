// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mudarribe_trainee/components/boxing_trainers_card.dart';
import 'package:mudarribe_trainee/components/topbar.dart';
import 'package:mudarribe_trainee/utils/colors.dart';

// import 'package:mudarribe_trainee/components/topbar.dart';

class CategoriesResultView extends StatefulWidget {
  const CategoriesResultView({super.key});

  @override
  State<CategoriesResultView> createState() => _CatigoriesResultScreenState();
}

class _CatigoriesResultScreenState extends State<CategoriesResultView> {
  String title = 'Ahmed Khaled';
  String description = 'Full Body Energy';
  String imgpath1 = 'assets/images/cardimg1.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            TopBar(
              text: 'Boxing Trainers',
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10, right: 270),
              child: Text("5 Results.",
                  style: TextStyle(
                    color: white.withOpacity(0.3),
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  )),
            ),
            Flexible(
              flex: 1,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.9,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      BoxingTrainersCard(
                          title: title,
                          description: description,
                          imgpath1: imgpath1),
                      BoxingTrainersCard(
                          title: title,
                          description: description,
                          imgpath1: imgpath1),
                      BoxingTrainersCard(
                          title: title,
                          description: description,
                          imgpath1: imgpath1),
                      BoxingTrainersCard(
                          title: title,
                          description: description,
                          imgpath1: imgpath1),
                      BoxingTrainersCard(
                          title: title,
                          description: description,
                          imgpath1: imgpath1),
                    ],
                  ),
                ),
              ),
            )
         
          ],
        ),
      )),
    );
  }
}
