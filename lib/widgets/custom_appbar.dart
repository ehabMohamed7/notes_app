import 'package:flutter/material.dart';
import 'package:notes2_app/widgets/search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Notes',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),

        Spacer(),

        SearchIcon(),
      ],
    );
  }
}
