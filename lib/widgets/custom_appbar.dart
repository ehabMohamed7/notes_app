import 'package:flutter/material.dart';

import 'search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.appBarTitle,
    required this.icon,
  });
  final String appBarTitle;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          appBarTitle,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),

        Spacer(),

        SearchIcon(icon: icon),
      ],
    );
  }
}
