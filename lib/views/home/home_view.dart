// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:mudarribe_trainee/components/banner_card.dart';
import 'package:mudarribe_trainee/components/category_card.dart';
import 'package:mudarribe_trainee/components/searchInput.dart';
import 'package:mudarribe_trainee/utils/colors.dart';
import 'package:mudarribe_trainee/utils/fontWeight.dart';
import 'package:mudarribe_trainee/views/home/home_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) =>Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(left: 15.0, right: 15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  SearchInput(),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 40.0),
                child: Text(
                  'Followed trainers',
                  style: TextStyle(
                    color: white,
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                ),  
              ),
              Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  height: 100,
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(
                          10,
                          (index) => Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 70,
                                    width: 80,
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
                                      padding: const EdgeInsets.all(3.5),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/user.jpg"),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'hamad_01',
                                    style: const TextStyle(
                                      color: white,
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: weight500,
                                    ),
                                  ),
                                ],
                              )))),
              Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  height: 220,
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(
                        3,
                        (index) => Padding(
                          padding: const EdgeInsets.only(right: 7.0),
                          child: BannerCard(),
                        ),
                      ))),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Catigories',
                    style: TextStyle(
                      color: white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  GestureDetector(
                    onLongPress: () {
              //         setState(() {
              //   showAllCards = !showAllCards;
              //   controller.updateDisplayedCards();
              // });
                    },
                    child: Text(
                      'View all',
                      style: TextStyle(
                        color: Color(0xFF727DCD),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              CategoryCard(
                title: 'Body Building\n',
                image: "assets/images/tumble.png",
                firstColor: Color(0xFF727DCD),
                secondColor: Color(0xFF58E0FF),
              ),
              Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Set the number of columns here
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              itemCount: controller.displayedCards.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(controller.displayedCards[index]),
                  ),
                );
              },
            ),
          ),
            ],
          ),
        ),
      )),
    ));
  }
}
