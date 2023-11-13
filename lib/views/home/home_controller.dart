// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudarribe_trainee/components/category_card.dart';

class HomeController extends GetxController {
  static HomeController instance = Get.find();
   List<String> displayedCards = [];
   bool showAllCards = false;
   List allCards = [
    CategoryCard(
      title: 'Body Building\n',
      image: "assets/images/tumble.png",
      firstColor: Color(0xFF727DCD),
      secondColor: Color(0xFF58E0FF),
    ),
    CategoryCard(
      title: 'Body Building\n',
      image: "assets/images/tumble.png",
      firstColor: Color(0xFF727DCD),
      secondColor: Color(0xFF58E0FF),
    ),
    CategoryCard(
      title: 'Body Building\n',
      image: "assets/images/tumble.png",
      firstColor: Color(0xFF727DCD),
      secondColor: Color(0xFF58E0FF),
    ),
    CategoryCard(
      title: 'Body Building\n',
      image: "assets/images/tumble.png",
      firstColor: Color(0xFF727DCD),
      secondColor: Color(0xFF58E0FF),
    ),
    CategoryCard(
      title: 'Body Building\n',
      image: "assets/images/tumble.png",
      firstColor: Color(0xFF727DCD),
      secondColor: Color(0xFF58E0FF),
    ),
    CategoryCard(
      title: 'Body Building\n',
      image: "assets/images/tumble.png",
      firstColor: Color(0xFF727DCD),
      secondColor: Color(0xFF58E0FF),
    ),
    
  ];
    @override
      void onInit() {
    super.onInit();
    updateDisplayedCards();
  }

  void updateDisplayedCards() {
    if (showAllCards) {
      displayedCards = List.from(allCards);
    } else {
      // displayedCards = allCards.take(6).toList();
    }
  }
  // Input Toggle button function


}
