// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:mudarribe_trainee/components/boxing_trainers_card.dart';
import 'package:mudarribe_trainee/components/eventDetailsCard.dart';
import 'package:mudarribe_trainee/components/eventDetailsCard1.dart';
import 'package:mudarribe_trainee/utils/colors.dart';
import 'package:mudarribe_trainee/views/trainee_profile/saved/saved_controller.dart';

class SavedViews extends StatefulWidget {
  const SavedViews({Key? key}) : super(key: key);

  @override
  State<SavedViews> createState() => _SavedViewsState();
}

enum PackageType { Trainers, Events, Posts }

class _SavedViewsState extends State<SavedViews> {
  String title = 'Ahmed Khaled';
  String description = 'Full Body Energy';
  String imgpath1 = 'assets/images/cardimg1.png';

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SavedController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.black,
          leading: IconButton(
            icon: SvgPicture.asset(
              'assets/images/arrowleft.svg',
              fit: BoxFit.scaleDown,
            ),
            onPressed: () {
              // Handle back button press
            },
          ),
          title: Text(
            'Saved',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        body: SafeArea(
          child: DefaultTabController(
            length: PackageType.values.length,
            child: Column(
              children: [
                TabBar(
                  indicatorColor: borderTop,
                  indicatorWeight: 4,
                  dividerColor: Colors.transparent,
                  tabs: [
                    Tab(
                      child: Text(
                        'Trainers',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Events',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Posts',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 26),
                    child: TabBarView(
                      children: [
                        Container(
                            child: Column(
                          children: [
                            SingleChildScrollView(
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
                                  BoxingTrainersCard(
                                      title: title,
                                      description: description,
                                      imgpath1: imgpath1),
                                ],
                              ),
                            )
                          ],
                        )),
                        Container(
                            child: SingleChildScrollView(
                          child: Column(
                            children: [
                              EventDetailsCardView(),
                              EventDetailsCardView(),
                              EventDetailsCardView(),
                              EventDetailsCardView(),
                            ],
                          ),
                        )),
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              Container(
                                width: 375,
                                height: 584,
                                decoration: BoxDecoration(
                                  color: bgContainer,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 14, top: 26),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                  height: 40,
                                                  width: 40,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    border:
                                                        const GradientBoxBorder(
                                                      gradient: LinearGradient(
                                                          colors: [
                                                            gradientred,
                                                            gradientpurple1,
                                                            gradientblue,
                                                          ]),
                                                      width: 2,
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            1.0),
                                                    child: Image.asset(
                                                        'assets/images/profile.png',
                                                        fit: BoxFit.fill),
                                                  )),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  left: 8,
                                                ),
                                                child: Text(
                                                  'Ahmed_67',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 14,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 13),
                                            child: Image.asset(
                                                'assets/images/bookmark-light.png'),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 10,
                                        right: 10,
                                        top: 16,
                                      ),
                                      child: Container(
                                        height: 353,
                                        width: 370,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.asset(
                                            'assets/images/savedpost.jpg',
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          color: bgContainer,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 10,
                                        right: 10,
                                        top: 18,
                                      ),
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Ahmed_67',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            TextSpan(text: '  '),
                                            TextSpan(
                                              text:
                                                  'hard workouts make your muscles strong! hard workouts make your muscles strong! hard workouts make your muscles strong hard workouts make your muscles strong!',
                                              style: TextStyle(
                                                color: Colors.white
                                                    .withOpacity(0.6),
                                                fontSize: 12,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 10,
                                        right: 10,
                                        top: 5,
                                      ),
                                      child: Row(
                                        children: [
                                          Text(
                                            '2 h',
                                            style: TextStyle(
                                              color:
                                                  Colors.white.withOpacity(0.5),
                                              fontSize: 12,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 16),
                                child: Container(
                                  width: 375,
                                  height: 584,
                                  decoration: BoxDecoration(
                                    color: bgContainer,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 14, top: 26),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                    height: 40,
                                                    width: 40,
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      border:
                                                          const GradientBoxBorder(
                                                        gradient:
                                                            LinearGradient(
                                                          colors: [
                                                            gradientred,
                                                            gradientpurple1,
                                                            gradientblue,
                                                          ],
                                                        ),
                                                        width: 2,
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              1.0),
                                                      child: Image.asset(
                                                          'assets/images/profile.png',
                                                          fit: BoxFit.fill),
                                                    )),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                    left: 8,
                                                  ),
                                                  child: Text(
                                                    'Ahmed_67',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 14,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 13),
                                              child: Image.asset(
                                                  'assets/images/bookmark-light.png'),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 10,
                                          right: 10,
                                          top: 16,
                                        ),
                                        child: Container(
                                          height: 353,
                                          width: 370,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Image.asset(
                                              'assets/images/savedpost.jpg',
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                            color: bgContainer,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 10,
                                          right: 10,
                                          top: 18,
                                        ),
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'Ahmed_67',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              TextSpan(text: '  '),
                                              TextSpan(
                                                text:
                                                    'hard workouts make your muscles strong! hard workouts make your muscles strong! hard workouts make your muscles strong hard workouts make your muscles strong!',
                                                style: TextStyle(
                                                  color: Colors.white
                                                      .withOpacity(0.6),
                                                  fontSize: 12,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 10,
                                          right: 10,
                                          top: 5,
                                        ),
                                        child: Row(
                                          children: [
                                            Text(
                                              '2 h',
                                              style: TextStyle(
                                                color: Colors.white
                                                    .withOpacity(0.5),
                                                fontSize: 12,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
