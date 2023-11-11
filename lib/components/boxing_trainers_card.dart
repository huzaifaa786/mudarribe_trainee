import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mudarribe_trainee/utils/colors.dart';

class BoxingTrainersCard extends StatelessWidget {
  const BoxingTrainersCard({super.key,    required this.title,
    required this.description,
    required this.imgpath1,});

  final String title;
  final String description;
  final String imgpath1;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          color: Color(0x872C2723), borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Column(
            children: [
              Image.asset(imgpath1),
              // 'assets/images/cardimg1.png'
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Text('⭐ 4.5',
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                      ))
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Text(description,
                  style: TextStyle(
                    color: white,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  )),
              SizedBox(
                width: 10,
              ),
              //Text('njjkkhhhh',style: TextStyle(color: Colors.red),)
            ],
          ),
          Column(
            
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 45, bottom: 50),
                child: SvgPicture.asset('assets/images/bookmark.svg'),
             ),
              Container(
                width: 80,
                height: 29,
                decoration: ShapeDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.00, -1.00),
                    end: Alignment(0, 1),
                    colors: [Color(0xFF727DCD), Color(0xFF58E0FF)],
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
                child: Stack(
                  children: [
                    Container(
                      width: 84,
                      height: 24.17,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        'View Profile',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
