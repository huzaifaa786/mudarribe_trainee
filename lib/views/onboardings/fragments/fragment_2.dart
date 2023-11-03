import 'package:flutter/material.dart';

class FragmentTwo extends StatefulWidget {
  const FragmentTwo({super.key, required this.controller});
  final PageController controller;
  @override
  State<FragmentTwo> createState() => _FragmentTwoState();
}

class _FragmentTwoState extends State<FragmentTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
                  // padding: EdgeInsets.only(top: 4),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(
                  'assets/images/splashLogo.png',
                ),
                height: MediaQuery.of(context).size.height * 0.35,
              ),
              Container(
                padding: EdgeInsets.only(top: 8,right: 8,left: 8,bottom : 10),
                child: Text(
                  'All you have to do is fill up the required information , and a car wash professional will be available instantly to wash your car while you are enjoying your coffee',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 12,right: 8,left: 8,bottom : 8),
                child: Text(
                  'كل ما عليك فعله هو تعبئة البيانات المطلوبة و بعدها سوف يأتي محترف غسيل السيارات مباشرةً لغسيل سيارتك في الوقت الذي تستمتع به في شراب قهوتك',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
                  ),
                ),
          )),
    );
  }
}
