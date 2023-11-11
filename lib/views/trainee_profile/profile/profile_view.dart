// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:mudarribe_trainee/components/appbar.dart';
import 'package:mudarribe_trainee/utils/colors.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class TraineeProfileView extends StatelessWidget {
  const TraineeProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TopScreenBar(
              mytext: 'Account',
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(left: 15, right: 15, top: 10),
              padding: const EdgeInsets.only(
                  left: 15, right: 15, top: 10, bottom: 10),
              decoration: BoxDecoration(
                  color: bgContainer, borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        'assets/images/cardimg1.png',
                        fit: BoxFit.cover,
                        height: 90,
                        width: 90,
                      )),
                  Text(
                    "Mohammed Ahmed",
                    style: const TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: white,
                      height: 52 / 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Divider(color: white.withOpacity(0.45)),
                  Gap(16),
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/images/profile.svg',
                              height: 20,
                              fit: BoxFit.scaleDown,
                            ),
                            Gap(12),
                            GradientText('Forget password?',
                                style: TextStyle(
                                    fontSize: 14.0, fontFamily: "Poppins"),
                                colors: [borderDown, borderTop]),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: white,
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// Align(
//                     alignment: Alignment.centerLeft,
//                     child: Text(
//                       "Name",
//                       style: TextStyle(
//                         fontFamily: "Montserrat",
//                         fontSize: 14,
//                         fontWeight: FontWeight.w500,
//                         color: white.withOpacity(0.45),
//                         height: 20 / 14,
//                       ),
//                     ),
//                   ),
//                   Align(
//                     alignment: Alignment.centerLeft,
//                     child: Text(
//                       "Email",
//                       style: TextStyle(
//                         fontFamily: "Montserrat",
//                         fontSize: 14,
//                         fontWeight: FontWeight.w500,
//                         color: white.withOpacity(0.45),
//                         height: 40 / 14,
//                       ),
//                     ),
//                   ),
