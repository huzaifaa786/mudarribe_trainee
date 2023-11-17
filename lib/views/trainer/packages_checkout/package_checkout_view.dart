// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:mudarribe_trainee/components/Eventcheckoutcontainer.dart';
import 'package:mudarribe_trainee/components/checkbox.dart';
import 'package:mudarribe_trainee/components/textgradient.dart';
import 'package:mudarribe_trainee/utils/colors.dart';
import 'package:mudarribe_trainee/views/trainer/event_checkout/event_checkout_view.dart';
import 'package:mudarribe_trainee/views/trainer/packages_checkout/package_checkout_controller.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class PackagecheckoutView extends StatefulWidget {
  const PackagecheckoutView({super.key});

  @override
  State<PackagecheckoutView> createState() => _PackagecheckoutViewState();
}

enum packagePaymentMethod { visa, googlePay, applePay }

class _PackagecheckoutViewState extends State<PackagecheckoutView> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<Packagecheckoutcontroller>(
        builder: (controller) => Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.black,
                leading: Icon(
                  Icons.arrow_back_ios_new,
                  color: white,
                ),
                title: Text(
                  'Package Check out',
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
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          height: 191,
                          width: MediaQuery.sizeOf(context).width,
                          decoration: BoxDecoration(
                            color: bgContainer,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipOval(
                                      child: Container(
                                        width: 36,
                                        height: 36,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: const GradientBoxBorder(
                                            gradient: LinearGradient(
                                              colors: [
                                                Color.fromARGB(
                                                    255, 184, 66, 186),
                                                Color.fromARGB(
                                                    255, 111, 127, 247),
                                              ],
                                            ),
                                            width: 2,
                                          ),
                                          image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/profile.jpg'),
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 2.0, left: 10.4),
                                      child: Row(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Salim Ahmed',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Text(
                                                'Body Building& lifting trainer',
                                                style: TextStyle(
                                                  fontSize: 10,
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.white
                                                      .withOpacity(
                                                          0.6000000238418579),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(top: 7,bottom: 7),
                                                child: Row(
                                                  children: [
                                                    Image.asset(
                                                      'assets/images/packageplanimage.png',
                                                      height: 19,
                                                      width: 20,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 5, right: 5),
                                                      child: Text(
                                                        '+',
                                                        style: TextStyle(
                                                            color: white,
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight.w700),
                                                      ),
                                                    ),
                                                    Image.asset(
                                                        'assets/images/packageplanimage1.png',
                                                        height: 18,
                                                        width: 20),
                                                  ],
                                                ),
                                              ),
                                              Text(
                                                '1  month Plan',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w700,
                                                    color: whitewithopacity1),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(top: 5,bottom: 10),
                                                child: Text(
                                                    'Included Exercises & Nutrition Plan',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: whitewithopacity1)),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(
                                        right: 14,
                                      ),
                                      child: Row(
                                        children: [
                                          Text(
                                            ' 150.44',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Montserrat',
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          Text(
                                            'AED',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Montserrat',
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ],
                                      )),
                                ],
                              )
                            ],
                          ),
                        ),
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
                              padding:
                                  const EdgeInsets.only(left: 15, right: 15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Promo Code',
                                    style: TextStyle(
                                      color: white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  GradientText1(
                                    text: 'Add Code',
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 35, left: 5, bottom: 20),
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
                          decoration: BoxDecoration(
                            color: bgContainer,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, right: 15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Price ',
                                      style: TextStyle(
                                        color: white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      '150.00 AED',
                                      style: TextStyle(
                                        color: white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 5, right: 5),
                                child: Divider(
                                  thickness: 1,
                                  color: dividercolor,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, right: 15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Offer ',
                                      style: TextStyle(
                                        color: white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      '00.00 AED',
                                      style: TextStyle(
                                        color: white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 5, right: 5),
                                child: Divider(
                                  thickness: 1,
                                  color: dividercolor,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, right: 15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Total',
                                      style: TextStyle(
                                        color: white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    GradientText(
                                      '130.00 AED',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                      ),
                                      colors: [borderTop, gradientblue],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 35, left: 5, bottom: 20),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Payment Method',
                              style: TextStyle(
                                color: white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 282,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: bgContainer,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  // height: 58,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(24),
                                      border: Border.all(
                                        color: controller.site ==
                                                packagePaymentMethod.visa
                                            ? Colors.white
                                            : dividercolor,
                                      )),
                                  child: Checkedbox(
                                    staticimage: 'assets/images/visa.png',
                                    groupvalue: controller.site,
                                    value: packagePaymentMethod.visa,
                                    onchaged: () async {
                                      await controller.toggleplan(
                                          packagePaymentMethod.visa);
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15, bottom: 15),
                                  child: Container(
                                    // height: 58,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(24),
                                        border: Border.all(
                                          color: controller.site ==
                                                  packagePaymentMethod.applePay
                                              ? Colors.white
                                              : dividercolor,
                                        )),
                                    child: Checkedbox(
                                      staticimage: 'assets/images/applepay.png',
                                      groupvalue: controller.site,
                                      value: packagePaymentMethod.applePay,
                                      onchaged: () async {
                                        await controller.toggleplan(
                                            packagePaymentMethod.applePay);
                                      },
                                    ),
                                  ),
                                ),
                                Container(
                                  // height: 58,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(24),
                                      border: Border.all(
                                        color: controller.site ==
                                                packagePaymentMethod.googlePay
                                            ? white
                                            : dividercolor,
                                      )),
                                  child: Checkedbox(
                                    staticimage: 'assets/images/googlepay.png',
                                    groupvalue: controller.site,
                                    value: packagePaymentMethod.googlePay,
                                    onchaged: () async {
                                      await controller.toggleplan(
                                          packagePaymentMethod.googlePay);
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              bottom: 30, top: 30, left: 20, right: 20),
                          child: Obx(
                            () => GestureDetector(
                                onTap: () {
                                  controller.toggleButtonColor();
                                },
                                child: Container(
                                  padding: EdgeInsets.only(top: 17),
                                  width: MediaQuery.of(context).size.width,
                                  height: 55,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusDirectional.circular(5),
                                      gradient: LinearGradient(
                                        begin: Alignment(1.00, -0.03),
                                        end: Alignment(-1, 0.03),
                                        colors: controller.isButtonPressed.value
                                            ? [bgContainer, bgContainer]
                                            : [
                                                Color(0xFF58E0FF),
                                                Color(0xFF727DCD)
                                              ],
                                      )),
                                  child: Text(
                                    'Check Out',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                )),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )),
            ));
  }
}
