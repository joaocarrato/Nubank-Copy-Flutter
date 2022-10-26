// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nubank_copy/home_page.dart';
import 'package:nubank_copy/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
