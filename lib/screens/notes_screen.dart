import 'package:flutter/material.dart';
import '../widgets/body_of_notes_screen.dart';
import '../widgets/custom_bottom_sheet.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.cyanAccent,
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            showDragHandle: true,
            context: context,
            builder: (context) {
              return CustomBottomSheet();
            },
          );
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(26)),
        child: Icon(Icons.add, color: Colors.black),
      ),
      body: BodyOfNotesScreen(),
    );
  }
}
