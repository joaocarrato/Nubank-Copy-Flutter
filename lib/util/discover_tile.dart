import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Discover extends StatelessWidget {
  String imagePath;
  String discoverTitle;
  String discoverSub;
  Discover({
    required this.imagePath,
    required this.discoverTitle,
    required this.discoverSub,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4.0, 4, 10, 4),
      child: Container(
        height: 120,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: HexColor('#F0F1F5'),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 90,
                // width: 175,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  discoverTitle,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 8, 0, 0),
                child: Text(
                  discoverSub,
                  style: TextStyle(
                    fontSize: 13,
                    color: HexColor('#787982'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 10, 10, 0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: HexColor('#830AD3'),
                  ),
                  padding: EdgeInsets.all(8),
                  child: Text(
                    'Conhecer',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
