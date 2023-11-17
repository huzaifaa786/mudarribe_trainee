// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:mudarribe_trainee/components/checkbox.dart';
import 'package:mudarribe_trainee/components/eventDetailsCard.dart';
import 'package:mudarribe_trainee/components/packagecheckbox.dart';
import 'package:mudarribe_trainee/routes/app_routes.dart';
import 'package:mudarribe_trainee/utils/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mudarribe_trainee/views/trainer/profile/profile_controller.dart';

class TrainerprofileView extends StatefulWidget {
  const TrainerprofileView({super.key});

  @override
  State<TrainerprofileView> createState() => _TrainerprofileViewState();
}

enum PackageType { monthBoth, month1, month2 }

class _TrainerprofileViewState extends State<TrainerprofileView> {
  final TrainerprofileController controller = TrainerprofileController.instance;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TrainerprofileController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Icon(
            Icons.arrow_back_ios_new,
            color: white,
          ),
        ),
        body: SafeArea(
            child: Padding(
          padding:
              const EdgeInsets.only(left: 10, right: 10, bottom: 10.0, top: 10),
          child: Container(
            padding: EdgeInsets.only(left: 8, right: 8, top: 15, bottom: 15.0),
            width: MediaQuery.of(context).size.width * 0.99,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10), topLeft: Radius.circular(10)),
              color: bgContainer,
            ),
            child: SingleChildScrollView(
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
                      Obx(() => GestureDetector(
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
                              controller.isFollowing.value
                                  ? 'Following'
                                  : 'Follow',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ))),
                      SvgPicture.asset(
                        'assets/images/chat.svg',
                        width: 32,
                        height: 33,
                        fit: BoxFit.scaleDown,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 30),
                    child: ToggleButtons(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16),
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
                              padding: const EdgeInsets.symmetric(horizontal: 8),
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
                  controller.indexs == 0
                      ? GridView.builder(
                        shrinkWrap: true,
                        gridDelegate:
                            SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                        ),
                        itemCount: controller.gridItems.length,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            controller.gridItems[index],
                            fit: BoxFit.cover,
                          );
                        },
                      )
                      : controller.indexs == 1
                          ? Container(
                              height: MediaQuery.of(context).size.height * 0.44,
                              child: ListView(
                                children: [
                                  EventDetailsCard(),
                                  EventDetailsCard(),
                                ],
                              ),
                            )
                          : Container(
                              height: MediaQuery.of(context).size.height * 0.44,
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Container(
                                      height: MediaQuery.of(context).size.height *
                                          0.3,
                                      child: SingleChildScrollView(
                                        child: Column(
                                          children: [
                                            Stack(children: [
                                              GestureDetector(
                                                onTap: () async {
                                                  await controller.toggleplan(
                                                      PackageType.monthBoth);
                                                  setState(() {});
                                                },
                                                child: Container(
                                                    height: 118,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      color: Colors.black,
                                                      border: controller.mytype ==
                                                              PackageType
                                                                  .monthBoth
                                                          ? Border.all(
                                                              color: Colors.white)
                                                          : null,
                                                    ),
                                                    width: MediaQuery.of(context)
                                                        .size
                                                        .width,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 70,
                                                              top: 10,
                                                              right: 30),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        top: 10),
                                                                child: Row(
                                                                  children: [
                                                                    Image.asset(
                                                                      'assets/images/packageplanimage.png',
                                                                      height: 19,
                                                                      width: 20,
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsets
                                                                          .only(
                                                                          left: 5,
                                                                          right:
                                                                              5),
                                                                      child: Text(
                                                                        '+',
                                                                        style: TextStyle(
                                                                            color:
                                                                                white,
                                                                            fontSize:
                                                                                20,
                                                                            fontWeight:
                                                                                FontWeight.w700),
                                                                      ),
                                                                    ),
                                                                    Image.asset(
                                                                        'assets/images/packageplanimage1.png',
                                                                        height:
                                                                            18,
                                                                        width:
                                                                            20),
                                                                  ],
                                                                ),
                                                              ),
                                                              Row(
                                                                children: [
                                                                  Text(
                                                                    '150.44',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            20,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w700,
                                                                        color:
                                                                            whitewithopacity1),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsets
                                                                        .only(
                                                                            top:
                                                                                10,
                                                                            left:
                                                                                6),
                                                                    child: Text(
                                                                      'AED',
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              12,
                                                                          fontWeight:
                                                                              FontWeight
                                                                                  .w700,
                                                                          color:
                                                                              whitewithopacity1),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    top: 5,
                                                                    bottom: 5),
                                                            child: Text(
                                                              '1  month Plan',
                                                              style: TextStyle(
                                                                  fontSize: 12,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  color:
                                                                      whitewithopacity1),
                                                            ),
                                                          ),
                                                          Text(
                                                              'Included Exercises & Nutrition Plan',
                                                              style: TextStyle(
                                                                  fontSize: 12,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  color:
                                                                      whitewithopacity1)),
                                                        ],
                                                      ),
                                                    )),
                                              ),
                                              Positioned(
                                                  top: 0,
                                                  right: 140,
                                                  child: packagecheckedbox(
                                                    groupvalue: controller.mytype,
                                                    value: PackageType.monthBoth,
                                                    onchaged: () async {
                                                      await controller.toggleplan(
                                                          PackageType.monthBoth);
                                                      setState(() {});
                                                    },
                                                  ))
                                            ]),
                                            Stack(children: [
                                              GestureDetector(
                                                onTap: () async {
                                                  await controller.toggleplan(
                                                      PackageType.month1);
                                                  setState(() {});
                                                },
                                                child: Padding(
                                                  padding: const EdgeInsets.only(
                                                      top: 10, bottom: 10),
                                                  child: Container(
                                                      height: 118,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                10),
                                                        color: Colors.black,
                                                        border: controller
                                                                    .mytype ==
                                                                PackageType.month1
                                                            ? Border.all(
                                                                color:
                                                                    Colors.white)
                                                            : null,
                                                      ),
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets.only(
                                                                left: 70,
                                                                top: 10,
                                                                right: 30),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                              children: [
                                                                Text(
                                                                  '150.44',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          20,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700,
                                                                      color:
                                                                          whitewithopacity1),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          top: 10,
                                                                          left:
                                                                              6),
                                                                  child: Text(
                                                                    'AED',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            12,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w700,
                                                                        color:
                                                                            whitewithopacity1),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                      top: 5,
                                                                      bottom: 15),
                                                              child: Row(
                                                                children: [
                                                                  Image.asset(
                                                                    'assets/images/packageplanimage.png',
                                                                    height: 19,
                                                                    width: 20,
                                                                  ),
                                                                  Padding(
                                                                    padding:
                                                                        const EdgeInsets
                                                                            .only(
                                                                            left:
                                                                                10),
                                                                    child: Text(
                                                                      '1  month Plan',
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              12,
                                                                          fontWeight:
                                                                              FontWeight
                                                                                  .w600,
                                                                          color:
                                                                              whitewithopacity1),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Text(
                                                                'Included Exercises  Plan only',
                                                                style: TextStyle(
                                                                    fontSize: 12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    color:
                                                                        whitewithopacity1)),
                                                          ],
                                                        ),
                                                      )),
                                                ),
                                              ),
                                              Positioned(
                                                  top: 10.0,
                                                  right: 140,
                                                  child: packagecheckedbox(
                                                    groupvalue: controller.mytype,
                                                    value: PackageType.month1,
                                                    onchaged: () async {
                                                      await controller.toggleplan(
                                                          PackageType.month1);
                                                      setState(() {});
                                                    },
                                                  ))
                                            ]),
                                            Stack(children: [
                                              GestureDetector(
                                                onTap: () async {
                                                  await controller.toggleplan(
                                                      PackageType.month2);
                                                  setState(() {});
                                                },
                                                child: Container(
                                                    height: 118,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      color: Colors.black,
                                                      border: controller.mytype ==
                                                              PackageType.month2
                                                          ? Border.all(
                                                              color: Colors.white)
                                                          : null,
                                                    ),
                                                    width: MediaQuery.of(context)
                                                        .size
                                                        .width,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 70,
                                                              top: 10,
                                                              right: 30),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            children: [
                                                              Text(
                                                                '150.44',
                                                                style: TextStyle(
                                                                    fontSize: 20,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700,
                                                                    color:
                                                                        whitewithopacity1),
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        top: 10,
                                                                        left: 6),
                                                                child: Text(
                                                                  'AED',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          12,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700,
                                                                      color:
                                                                          whitewithopacity1),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    top: 5,
                                                                    bottom: 15),
                                                            child: Row(
                                                              children: [
                                                                Image.asset(
                                                                    'assets/images/packageplanimage1.png',
                                                                    height: 18,
                                                                    width: 20),
                                                                Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .only(
                                                                          left:
                                                                              10),
                                                                  child: Text(
                                                                    '1  month Plan',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            12,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w600,
                                                                        color:
                                                                            whitewithopacity1),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Text(
                                                              'Included Exercises & Nutrition Plan',
                                                              style: TextStyle(
                                                                  fontSize: 12,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  color:
                                                                      whitewithopacity1)),
                                                        ],
                                                      ),
                                                    )),
                                              ),
                                              Positioned(
                                                  top: 1.0,
                                                  right: 140,
                                                  child: packagecheckedbox(
                                                    groupvalue: controller.mytype,
                                                    value: PackageType.month2,
                                                    onchaged: () async {
                                                      await controller.toggleplan(
                                                          PackageType.month2);
                                                      setState(() {});
                                                    },
                                                  ))
                                            ]),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15),
                                      child: Container(
                                        height: 53,
                                        width: MediaQuery.of(context).size.width,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadiusDirectional.circular(
                                                    5),
                                            gradient: LinearGradient(
                                              begin: Alignment(1.00, -0.03),
                                              end: Alignment(-1, 0.03),
                                              colors: [
                                                Color(0xFF58E0FF),
                                                Color(0xFF727DCD)
                                              ],
                                            )),
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 12),
                                          child: GestureDetector(
                                            onTap: () {
                                              Get.toNamed(
                                                  AppRoutes.packagecheckout);
                                            },
                                            child: Text(
                                              'Subscribe',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 40, bottom: 35),
                                      child: Row(children: <Widget>[
                                        Expanded(
                                            child: Container(
                                                margin: EdgeInsets.only(
                                                    left: 10, right: 10),
                                                child: Divider(
                                                    color: dividercolor))),
                                        Text(
                                          "Or ",
                                          style: const TextStyle(
                                              fontFamily: "Poppins",
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: white),
                                        ),
                                        Expanded(
                                            child: Container(
                                                margin: EdgeInsets.only(
                                                    left: 10, right: 10),
                                                child: Divider(
                                                    color: dividercolor))),
                                      ]),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          bottom: 10, left: 5, right: 5),
                                      child: Container(
                                        height: 93,
                                        width: MediaQuery.sizeOf(context).width,
                                        decoration: BoxDecoration(
                                          color: bgContainer,
                                          borderRadius: BorderRadius.circular(10),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(0.5),
                                              spreadRadius: 0,
                                              blurRadius: 4,
                                              offset: Offset(1, 2),
                                            ),
                                          ],
                                        ),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 15, top: 20, right: 15),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.start,
                                                    children: [
                                                      ClipOval(
                                                        child: Container(
                                                          width: 50,
                                                          height: 50,
                                                          decoration:
                                                              BoxDecoration(
                                                            shape:
                                                                BoxShape.circle,
                                                            border:
                                                                const GradientBoxBorder(
                                                              gradient:
                                                                  LinearGradient(
                                                                colors: [
                                                                  Color.fromARGB(
                                                                      255,
                                                                      184,
                                                                      66,
                                                                      186),
                                                                  Color.fromARGB(
                                                                      255,
                                                                      111,
                                                                      127,
                                                                      247),
                                                                ],
                                                              ),
                                                              width: 2,
                                                            ),
                                                            image:
                                                                DecorationImage(
                                                              image: AssetImage(
                                                                  'assets/images/profile.jpg'),
                                                              fit: BoxFit.contain,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets.only(
                                                                top: 2.0,
                                                                left: 10.4),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text(
                                                              'Ahmed_67',
                                                              style: TextStyle(
                                                                fontSize: 12,
                                                                fontFamily:
                                                                    'Montserrat',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                color:
                                                                    Colors.white,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                      top: 10),
                                                              child: Text(
                                                                'Chat With me for a personal plan',
                                                                style: TextStyle(
                                                                  fontSize: 12,
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color: Colors
                                                                      .white
                                                                      .withOpacity(
                                                                          0.6000000238418579),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SvgPicture.asset(
                                                    'assets/images/chat.svg',
                                                    width: 32,
                                                    height: 33,
                                                    fit: BoxFit.scaleDown,
                                                  ),
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
                ],
              ),
            ),
          ),
        )),
      ),
    );
  }
}
