import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ButtonsNu extends StatelessWidget {
  String text;
  IconData icone;
  ButtonsNu({
    required this.text,
    required this.icone,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: HexColor('#F0F1F5')),
            child: Icon(icone),
          ),
        ),
        SizedBox(height: 5),
        Text(
          text,
          style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
