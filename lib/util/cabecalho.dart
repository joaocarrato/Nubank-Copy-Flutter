import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Cabecalho extends StatelessWidget {
  const Cabecalho({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: HexColor('#830AD1'),
        boxShadow: [
          BoxShadow(
            blurRadius: 1,
          ),
        ],
      ),
      padding: EdgeInsets.all(16),
      height: 120,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // AVATAR
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/joao.jpg'),
                radius: 22.5,
              ),

              // ICONES
              Row(
                children: [
                  Icon(
                    Icons.visibility_off,
                    color: HexColor('#FFFBF7'),
                    size: 22,
                  ),
                  SizedBox(width: 20),
                  Icon(
                    Icons.help_outline,
                    color: HexColor('#FFFBF7'),
                    size: 22,
                  ),
                  SizedBox(width: 20),
                  Icon(
                    Icons.manage_accounts_outlined,
                    color: HexColor('#FFFBF7'),
                    size: 22,
                  ),
                  SizedBox(width: 10),
                ],
              ),
            ],
          ),
          SizedBox(height: 18),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              '  Olá, João',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
