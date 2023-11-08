// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudarribe_trainee/utils/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TrainerprofileView extends StatefulWidget {
  const TrainerprofileView({super.key});

  @override
  State<TrainerprofileView> createState() => _TrainerprofileViewState();
}

class _TrainerprofileViewState extends State<TrainerprofileView> {
  @override
  Widget build(BuildContext context) {
    return // GetBuilder<TrainerprounfController>(
        //   builder: (controller) =>
        Scaffold(
      appBar: AppBar(
        toolbarHeight: 98,
        backgroundColor: appbarbckground,
        leading: SvgPicture.asset(
          'assets/images/arrowleft.svg',
          height: 17,
          width: 12,
          fit: BoxFit.scaleDown,
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Container(
            width: MediaQuery.of(context).size.width * 1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: bgContainer,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                              height: 100,
                              width: 100,
                              decoration: ShapeDecoration(
                                color: Color(0xFF0F0A06),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      width: 2, color: Color(0xFFBF00C3)),
                                  borderRadius: BorderRadius.circular(57),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Image.asset('assets/images/profile.png',
                                    fit: BoxFit.fill),
                              ))
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Salim Ahmed',
                                style: TextStyle(
                                    color: white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 7),
                                child: Image.asset(
                                  'assets/images/verified_tick.png',
                                  width: 20,
                                  height: 20,
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8, bottom: 8),
                            child: Text(
                              'Body Building& lifting trainer',
                              style: TextStyle(
                                  color: profilesubheading,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          Text(
                            'Body Building & lifting  trainer, let me help\n you to get your dream body!  ',
                            style: TextStyle(
                                color: Color(4294967295),
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Divider(
                    thickness: 1,
                    color: dividercolor,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      width: 264,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(5),
                          gradient: LinearGradient(
                            begin: Alignment(1.00, -0.03),
                            end: Alignment(-1, 0.03),
                            colors: [
                              Color(
                                0xFF58E0FF,
                              ),
                              Color(0xFF727DCD),
                            ],
                          )),
                      child: Text(
                        'Follow',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    // SvgPicture.asset(
                    //   'assets/images/ph_chat-dots-fill.svg',
                    //   width: 32,
                    //   height: 33,
                    // ),
                  ],
                )
              ],
            ),
          ),
        ),
      )),
    );
    // );
  }
}
