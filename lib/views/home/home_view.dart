import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
            // Container(
            //     width: double.infinity,
            //     height: 300,
            //     child: GridView.count(
            //       // scrollDirection: Axis.horizontal,
            //       physics: ScrollPhysics(),
            //       shrinkWrap: true,
            //       primary: true,
            //       padding: EdgeInsets.only(top: 15.0),
            //       //Screensize grid count
            //       childAspectRatio: 0.60, //1.0
            //       mainAxisSpacing: 0.2, //1.0
            //       crossAxisSpacing: 4.0, //1.0
            //       crossAxisCount: 3,
            //       children: [
            //         Container(
            //           height: 200,
            //           width: 200,
            //           color: Colors.green,
            //         ),
            //         Container(
            //           height: 200,
            //           width: 200,
            //           color: Colors.red,
            //         ),
            //         Container(
            //           height: 200,
            //           width: 200,
            //           color: Colors.orange,
            //         ),
            //         Container(
            //           height: 200,
            //           width: 200,
            //           color: Colors.indigo,
            //         ),
            //       ],
            //     ))
          
          ],
        ),
      )),
    );
  }
}
