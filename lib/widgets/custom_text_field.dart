import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.lableText,
    this.contentPadding = 20,
    this.maxLines = 1,
  });
  final String lableText;
  final double contentPadding;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      cursorColor: Colors.white,

      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(contentPadding),
        labelText: lableText,
        labelStyle: TextStyle(color: Colors.cyanAccent),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}
