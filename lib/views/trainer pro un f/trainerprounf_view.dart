import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudarribe_trainee/utils/colors.dart';
import 'package:mudarribe_trainee/views/trainer%20pro%20un%20f/trainerprounf_controller.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TrainerprounfView extends StatefulWidget {
  const TrainerprounfView({super.key});

  @override
  State<TrainerprounfView> createState() => _TrainerprounfViewState();
}

class _TrainerprounfViewState extends State<TrainerprounfView> {
  @override
  Widget build(BuildContext context) {
    return
        // GetBuilder<TrainerprounfController>(
        //   builder: (controller) =>
        Scaffold(
      appBar: AppBar(
        backgroundColor: appbarbckground,
        leading: Image.asset(
          'assets/icons/Vector 2.png',
          height: 24,
          width: 24,
          color: Colors.white,
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(7),
          width: MediaQuery.of(context).size.width * 1,
          decoration: BoxDecoration(
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
                            height: 98,
                            width: 102,
                            decoration: ShapeDecoration(
                              color: Color(0xFF0F0A06),
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 1, color: Color(0xFFBF00C3)),
                                borderRadius: BorderRadius.circular(57),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Image.asset('assets/img/Rectangle 37.png',
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
                            SvgPicture.asset(
                                'assets/icons/fluent_signed-24-filled.svg')
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
              Divider(
                thickness: 1,
                // color: dividercolor,
              ),
              
            ],
          ),
        ),
      )),
    );
    // );
  }
}
