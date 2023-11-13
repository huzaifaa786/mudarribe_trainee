// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mudarribe_trainee/utils/colors.dart';

class SavedViews extends StatelessWidget {
  const SavedViews({Key? key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 90,
          backgroundColor: bgContainer,
          bottom: TabBar(
            dividerColor: Colors.transparent,
            padding: EdgeInsets.only(left: 30, right: 30),
            indicator: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: borderTop,
                  width: 4,
                ),
              ),
            ),
            indicatorColor: Colors.transparent,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 10,
            labelColor: Colors.white,
            unselectedLabelColor: profilesubheading,
            labelStyle: TextStyle(
              fontSize: 16,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w700,
            ),
            tabs: [
              Tab(
                text: 'Trainers',
                height: 50,
              ),
              Tab(text: 'Events'),
              Tab(text: 'Posts'),
            ],
          ),
          title: Container(
              child: Row(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 15, left: 10, bottom: 10),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/images/nevigate.svg',
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text('Saved',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ))
                    ],
                  ),
                ),
              ),
            ],
          )),
        ),
        body: TabBarView(
          children: [
            // FirstScreen(),
            // SecondScreen(),
            // ThirdScreen()
          ],
        ),
      ),
    );
  }
}
