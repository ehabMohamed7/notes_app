import 'package:flutter/material.dart';
import 'package:notes2_app/widgets/custom_text_field.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: const [
          CustomTextField(lableText: 'Title'),
          SizedBox(height: 24),
          CustomTextField(lableText: 'Content', maxLines: 4),
          Spacer(),
        ],
      ),
    );
  }
}
