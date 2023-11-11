// ignore_for_file: prefer_typing_uninitialized_variables, unused_field, unused_element

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:mudarribe_trainee/utils/colors.dart';
import 'dart:ui' as ui;

import 'package:mudarribe_trainee/views/home/home_view.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class FooterView extends StatefulWidget {
  const FooterView({Key? key, this.selectedIndex}) : super(key: key);
  final selectedIndex;

  @override
  State<FooterView> createState() => _FooterViewState();
}

class _FooterViewState extends State<FooterView> with RouteAware {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  // final GlobalKey<ChatsFragmentState> chatFragmentState = GlobalKey<ChatsFragmentState>();

  int _navigationMenuIndex = 0;
  bool _isScanning = false;

  void _scanQR() {
    setState(() {
      _isScanning = true;
    });
  }

  switchFragment(int index) {
    setState(() {
      _navigationMenuIndex = index;
    });
  }

  checkForSelectedIndex() {
    if (widget.selectedIndex != null) {
      _navigationMenuIndex = widget.selectedIndex;
    }
  }

  @override
  void initState() {
    checkForSelectedIndex();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    var _fragments = [
      const HomeView(),
      const HomeView(),
      const HomeView(),
      const HomeView(),
    ];
    return Directionality(
      textDirection: ui.TextDirection.ltr,
      child: WillPopScope(
        onWillPop: () => Future.value(false),
        child: Scaffold(
          body: SafeArea(
            child: _fragments[_navigationMenuIndex],
          ),
          bottomNavigationBar: BottomAppBar(
            color: Colors.black,
            child: SizedBox(
              height: 60,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Material(
                      color: Colors.black,
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              _navigationMenuIndex = 0;
                            });
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _navigationMenuIndex == 0
                                  ? SvgPicture.asset(
                                      'assets/images/home.svg',
                                      fit: BoxFit.scaleDown,
                                      height: 16,
                                      width: 16,
                                    )
                                  : SvgPicture.asset(
                                      'assets/images/homeunselected.svg',
                                      fit: BoxFit.scaleDown,
                                      height: 16,
                                      width: 16,
                                    ),
                                    const Gap(4),
                              GradientText(
                                'Home',
                                style: const TextStyle(
                                  fontSize: 10.0,
                                ),
                                colors: _navigationMenuIndex == 0
                                    ? [
                                        borderDown,
                                        borderTop
                                      ]
                                    : [white,white],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Material(
                      color: Colors.black,
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              _navigationMenuIndex = 1;
                            });
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _navigationMenuIndex == 1
                                  ? SvgPicture.asset(
                                      'assets/images/plansunselected.svg',
                                      fit: BoxFit.scaleDown,
                                      height: 16,
                                      width: 16,
                                    )
                                  : SvgPicture.asset(
                                      'assets/images/plansunselected.svg',
                                      fit: BoxFit.scaleDown,
                                      height: 16,
                                      width: 16,
                                    ),
                                    const Gap(4),
                              GradientText(
                                'My Plans',
                                style: const TextStyle(
                                  fontSize: 10.0,
                                ),
                                colors: _navigationMenuIndex == 1
                                    ? [
                                        borderDown,
                                        borderTop
                                      ]
                                    : [white,white],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Material(
                      color: Colors.black,
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              _navigationMenuIndex = 2;
                            });
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                               _navigationMenuIndex == 2
                                  ? SvgPicture.asset(
                                      'assets/images/eventunselected.svg',
                                      fit: BoxFit.scaleDown,
                                      height: 16,
                                      width: 16,
                                    )
                                  : SvgPicture.asset(
                                      'assets/images/eventunselected.svg',
                                      fit: BoxFit.scaleDown,
                                      height: 16,
                                      width: 16,
                                    ),
                                    const Gap(4),
                              Text(
                                'Events',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: _navigationMenuIndex == 2
                                      ? borderDown
                                      : white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Material(
                      color: Colors.black,
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              _navigationMenuIndex = 3;
                            });
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                               _navigationMenuIndex == 3
                                  ? SvgPicture.asset(
                                      'assets/images/profile.svg',
                                      fit: BoxFit.scaleDown,
                                      height: 16,
                                      width: 16,
                                    )
                                  : SvgPicture.asset(
                                      'assets/images/profileunselected.svg',
                                      fit: BoxFit.scaleDown,
                                      height: 16,
                                      width: 16,
                                    ),
                                    const Gap(4),
                              Text(
                                'Me',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: _navigationMenuIndex == 3
                                      ? borderDown
                                      : white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
