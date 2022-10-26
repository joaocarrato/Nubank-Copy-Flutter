// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class FluText extends StatelessWidget {
  String firstText;
  String secondText;
  Color corFirst;
  Color corSecond;
  FluText({
    required this.firstText,
    required this.secondText,
    Color this.corFirst = Colors.black,
    Color this.corSecond = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 15, 15),
      child: Container(
        padding: EdgeInsets.all(20),
        width: 255,
        decoration: BoxDecoration(
          color: HexColor('#F0F1F5'),
          borderRadius: BorderRadius.circular(15),
        ),
        child: RichText(
          text: TextSpan(
            style: TextStyle(color: Colors.black, fontSize: 13),
            children: [
              TextSpan(text: firstText, style: TextStyle(color: corFirst)),
              TextSpan(text: secondText, style: TextStyle(color: corSecond)),
            ],
          ),
        ),
      ),
    );
  }
}
