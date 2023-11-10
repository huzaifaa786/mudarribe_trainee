// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:mudarribe_trainee/components/appbar.dart';

class EventCard extends StatelessWidget {
  const EventCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              TopScreenBar(
                mytext: 'Event Details',
              ),
              Card(
                color: Colors.black,
                child: SizedBox(
                  height: 437,
                  width: MediaQuery.sizeOf(context).width * 0.86,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 19, top: 21),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipOval(
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: const GradientBoxBorder(
                                    gradient: LinearGradient(
                                      colors: [
                                        Color.fromARGB(255, 184, 66, 186),
                                        Color.fromARGB(255, 111, 127, 247),
                                      ],
                                    ),
                                    width: 2,
                                  ),
                                  image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/profile.jpg'),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 2.0, left: 10.4),
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Salim Ahmed',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        'Body Building& lifting trainer',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white
                                              .withOpacity(0.6000000238418579),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 35),
                              child: SvgPicture.asset(
                                'assets/images/bookmark.svg',
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 200,
                        width: MediaQuery.sizeOf(context).height * 0.35,
                        child: Image.asset(
                          'assets/images/cardImage.png',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset('assets/images/location.svg'),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    'Dubai',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    'Street 2367, Zaied Hotiel',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SvgPicture.asset('assets/images/timeline.svg'),
                                Padding(
                                  padding: const EdgeInsets.only(left: 6),
                                  child: Text(
                                    'from 3 : 00 to 05 : 00 pm',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                SvgPicture.asset('assets/images/calender1.svg'),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    '23/11/2023',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SvgPicture.asset(
                                    'assets/images/peoplesharp.svg'),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    'Total People amount: 3/34',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Price:',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Montserrat',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  ' 150.00 AED',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Montserrat',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 25),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    'Join Event',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Montserrat',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  )
                                ],
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
      ),
    );
  }
}