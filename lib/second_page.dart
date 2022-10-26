// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 250,
          width: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.blue,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Column(
              children: [
                Container(
                  color: Colors.red,
                  height: 100,
                ),
                Container(
                  color: Colors.amber,
                  height: 100,
                ),
                Container(
                  color: Colors.purple,
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
