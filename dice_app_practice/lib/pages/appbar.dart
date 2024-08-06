import 'package:flutter/material.dart';


class AppsBar extends StatelessWidget implements PreferredSizeWidget {
  const AppsBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        centerTitle: true,
        title: const Text(
          'Dice App',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5,
              color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey[800],
      );
  }

  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}