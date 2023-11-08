// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mudarribe_trainee/utils/colors.dart';

class MyEvents extends StatefulWidget {
  const MyEvents({super.key});

  @override
  State<MyEvents> createState() => _MyEventsState();
}

class _MyEventsState extends State<MyEvents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
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
                    'My Events',
                    style: TextStyle(
                      fontFamily: "Poppins",
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 28),
              child: Container(
                height: 143,
                width: 368,
                decoration: BoxDecoration(
                  color: bgContainer,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
