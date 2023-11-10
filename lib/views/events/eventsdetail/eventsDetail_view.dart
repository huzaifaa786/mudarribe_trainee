// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:mudarribe_trainee/components/appbar.dart';

class EventsDetails extends StatefulWidget {
  const EventsDetails({super.key});

  @override
  State<EventsDetails> createState() => _EventsDetailsState();
}

class _EventsDetailsState extends State<EventsDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TopScreenBar(
              mytext: 'Event Details',
            ),
            Card(
              color: Colors.orange,
              child: SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.4,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                              'assets/images/iconamoon_bookmark-light.svg',
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.135,
                      width: 350,
                      child: Image.asset(
                        'assets/images/cardImage.png',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
