import 'package:flutter/material.dart';
import 'custom_botton.dart';
import 'custom_text_field.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: SingleChildScrollView(
        child: Column(
          children: const [
            CustomTextField(lableText: 'Title'),
            SizedBox(height: 24),
            CustomTextField(lableText: 'Content', maxLines: 4),
            SizedBox(height: 60),

            CustomBotton(),
            SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}
