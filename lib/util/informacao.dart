import 'package:flutter/material.dart';

class Information extends StatelessWidget {
  const Information({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 16, 30, 5),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Conta',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                size: 15,
              ),
            ],
          ),
          SizedBox(height: 10),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              '●●●●',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
