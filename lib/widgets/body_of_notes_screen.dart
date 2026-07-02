import 'package:flutter/material.dart';
import 'package:notes2_app/widgets/custom_appbar.dart';

class BodyOfNotesScreen extends StatelessWidget {
  const BodyOfNotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(children: const [SizedBox(height: 50), CustomAppBar()]),
    );
  }
}
