// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
              color: Colors.black,
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
          ],
        ),
      ),
    );
  }
}
