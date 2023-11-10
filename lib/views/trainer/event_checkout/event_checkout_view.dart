// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mudarribe_trainee/components/Eventcheckoutcontainer.dart';
import 'package:mudarribe_trainee/utils/colors.dart';

class EventcheckoutView extends StatefulWidget {
  const EventcheckoutView({super.key});

  @override
  State<EventcheckoutView> createState() => _EventcheckoutViewState();
}

class _EventcheckoutViewState extends State<EventcheckoutView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(
          Icons.arrow_back_ios_new,
          color: white,
        ),
        title: Text(
          'Event Check out',
          style: TextStyle(
              fontSize: 20,
              color: white,
              fontWeight: FontWeight.w700,
              fontFamily: 'Poppins'),
        ),
      ),
      body: SafeArea(
          child: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: [
              EventcheckoutContainer(),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: 67,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: bgContainer,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Promo Code',
                          style: TextStyle(
                            color: white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Add Code',
                          style: TextStyle(
                            color: Color(0xFF727DCD),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35, left: 5, bottom:20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Summary',
                    style: TextStyle(
                      color: white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Container(
                height: 216,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: bgContainer,
                  borderRadius: BorderRadius.circular(10),

                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
