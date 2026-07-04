import 'package:flutter/material.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.cyanAccent,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          'Add',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
