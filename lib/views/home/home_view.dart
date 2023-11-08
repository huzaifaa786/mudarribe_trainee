import 'package:flutter/material.dart';
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
            height: 200,
             child:ListView(
               // This next line does the trick.
               scrollDirection: Axis.horizontal,
               children: <Widget>[
                 Container(
                   width: 50,
                   color: Colors.red,
                 ),
                 Container(
                   width: 50,
                   color: Colors.blue,
                 ),
                 
               ],
             )
          
           )
          ],
        ),
      )),
    );
  }
}
