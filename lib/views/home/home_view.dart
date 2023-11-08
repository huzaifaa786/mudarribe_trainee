import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:mudarribe_trainee/components/searchInput.dart';
import 'package:mudarribe_trainee/utils/colors.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(left: 15.0, right: 15.0),
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
                height: 70,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: List.generate(
                        10,
                        (index) => Container(
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
                                image: DecorationImage(
                                  image: AssetImage("assets/images/user.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ))))
          ],
        ),
      )),
    );
  }
}
