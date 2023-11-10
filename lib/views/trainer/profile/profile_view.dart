// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:mudarribe_trainee/utils/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mudarribe_trainee/views/trainer/profile/profile_controller.dart';

class TrainerprofileView extends StatefulWidget {
  const TrainerprofileView({super.key});

  @override
  State<TrainerprofileView> createState() => _TrainerprofileViewState();
}

class _TrainerprofileViewState extends State<TrainerprofileView> {
  final TrainerprounfController controller = TrainerprounfController.instance;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TrainerprounfController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: SvgPicture.asset(
            'assets/images/arrowleft.svg',
            height: 17,
            width: 12,
            fit: BoxFit.scaleDown,
          ),
        ),
        body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10,bottom: 10.0,top: 10),
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.only(left: 8, right: 8, top: 15,bottom: 100.0),
                  width: MediaQuery.of(context).size.width * 0.99,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only( topRight: Radius.circular(10),topLeft:Radius.circular(10) ),
                    color: bgContainer,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                              height: 92,
                              width: 90,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: const GradientBoxBorder(
                                  gradient: LinearGradient(colors: [
                                    Color(4290773187),
                                    Color(4285693389),
                                    Color(4278253801)
                                  ]),
                                  width: 2,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Image.asset('assets/images/profile.png',
                                    fit: BoxFit.fill),
                              )),
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Column(
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
                                SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.66,
                                  child: Text(
                                    'Body Building & lifting  trainer, let me help you to get your dream body!  ',
                                    style: TextStyle(
                                        color: white,
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400),
                                    maxLines: 2,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, bottom: 10, top: 35),
                        child: Divider(
                          thickness: 1,
                          color: dividercolor,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                      Obx(
                    () =>     GestureDetector(
                            onTap: () {
                        controller.toggleFollow();
                      },
                            child: Container(
                              padding: EdgeInsets.only(top: 10),
                              width: 264,
                              height: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadiusDirectional.circular(5),
                                  gradient: LinearGradient(
                                    begin: Alignment(1.00, -0.03),
                                    end: Alignment(-1, 0.03),
                                    colors: controller.isFollowing.value
                                ? [Colors.black, Colors.black]
                                : [Color(0xFF58E0FF), Color(0xFF727DCD)],
                                  )),
                              child: Text(
                                 controller.isFollowing.value ? 'Following' : 'Follow',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),),
                          SvgPicture.asset(
                            'assets/images/chat.svg',
                            width: 32,
                            height: 33,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: ToggleButtons(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 16),
                                  child: Text(
                                    'Posts',
                                    style: TextStyle(
                                      color: white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                VerticalDivider(
                                  color: Colors.grey,
                                  thickness: 1,
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 6, right: 6),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/events.png',
                                    width: 18,
                                    height: 18,
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(horizontal: 8),
                                    child: Text(
                                      'Events',
                                      style: TextStyle(
                                        color: white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  VerticalDivider(
                                    color: Colors.grey,
                                    thickness: 1,
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/packages.png',
                                  width: 18,
                                  height: 18,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  child: Text(
                                    'Packages',
                                    style: TextStyle(
                                      color: white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                          isSelected: controller.selections,
                          onPressed: (int index) {
                            controller.handleToggleButtons(index);
                          },
                          color: Colors.grey,
                          selectedColor: Colors.white,
                          selectedBorderColor: Colors.transparent,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: GridView.builder(
                          shrinkWrap: true,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                          ),
                          itemCount: controller.gridItems.length,
                          itemBuilder: (context, index) {
                            return Image.asset(
                              controller.gridItems[index],
                              fit: BoxFit.cover,
                            );
                          },
                        ),
                      ),
                      Text('asdfg'),
                    ],
                  ),
                ),
              ),
            )),
      ),
    );
  }
}
