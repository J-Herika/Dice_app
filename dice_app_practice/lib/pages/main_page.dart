// ignore_for_file: prefer_const_constructors

import 'package:dice_app_practice/pages/dice_section.dart';
import 'package:flutter/material.dart';
import 'package:dice_app_practice/pages/appbar.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      appBar: AppsBar(),
      body: DiceSection(),
    );
  }
}
