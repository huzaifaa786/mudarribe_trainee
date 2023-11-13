// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:mudarribe_trainee/utils/colors.dart';

class packagecheckedbox extends StatefulWidget {
  packagecheckedbox({
    Key? key,
    this.value,
    this.groupvalue,
    this.onpress,
    this.onchaged,
    this.image,
   
    
  }) : super(
          key: key,
        );
  final value;
  final onpress;
  final groupvalue;
  final onchaged;
  final image;
  
  @override
  State<packagecheckedbox> createState() => _CheckedboxState();
}

class _CheckedboxState extends State<packagecheckedbox> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onchaged,
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: ListTile(
          title: Transform.translate(
            offset: Offset(0, 0),
            child: Transform.scale(
                scale: 1.2,
                child: Radio(
                    value: widget.value.toString(),
                    groupValue: widget.groupvalue.toString(),
                    fillColor: MaterialStateColor.resolveWith(
                        (states) => borderDown),
                    onChanged: (value) {
                      widget.onchaged();
                    })),
          ),
          
          dense: true,
          contentPadding: EdgeInsets.only(left: 0.0, right: 0.0),
        ),
      ),
    );
  }
}
