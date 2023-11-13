// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mudarribe_trainee/components/appbar.dart';
import 'package:mudarribe_trainee/components/color_button.dart';
import 'package:mudarribe_trainee/components/underline_input.dart';
import 'package:mudarribe_trainee/utils/colors.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class TraineeEditProfileView extends StatelessWidget {
  const TraineeEditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TopScreenBar(
              mytext: 'Account',
            ),
            Flexible(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.9,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        margin: const EdgeInsets.only(
                            left: 15, right: 15, top: 20, bottom: 30),
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, top: 10, bottom: 10),
                        decoration: BoxDecoration(
                            color: bgContainer,
                            borderRadius: BorderRadius.circular(10)),
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
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Name",
                                style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: white.withOpacity(0.45),
                                  height: 20 / 14,
                                ),
                              ),
                            ),
                            UnderlineInputField(
                                img: 'assets/images/person.svg'),
                            Gap(20),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Email",
                                style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: white.withOpacity(0.45),
                                ),
                              ),
                            ),
                            UnderlineInputField(
                              img: 'assets/images/email_outline.svg',
                            ),
                            Gap(25),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: GradientText('Change password?',
                                  style: TextStyle(
                                      fontSize: 14.0, fontFamily: "Poppins"),
                                  colors: [borderDown, borderTop]),
                            ),
                            Gap(40),
                            GradientButton(
                                title: 'Save',
                                onPressed: () {},
                                selected: true),
                            Gap(15)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
