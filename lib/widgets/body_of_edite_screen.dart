import 'package:flutter/material.dart';
import 'custom_appbar.dart';
import 'custom_text_field.dart';

class BodyOfEditeScreen extends StatelessWidget {
  const BodyOfEditeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(appBarTitle: 'Edite note', icon: Icons.check),
          SizedBox(height: 40),
          CustomTextFormField(lableText: 'Title'),
          SizedBox(height: 24),
          CustomTextFormField(lableText: 'Content', maxLines: 4),
          SizedBox(height: 60),
        ],
      ),
    );
  }
}
