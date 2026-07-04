import 'package:flutter/material.dart';
import 'package:notes2_app/widgets/body_of_notes_screen.dart';
import 'package:notes2_app/widgets/custom_bottom_sheet.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
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
        child: Icon(Icons.add),
      ),
      body: BodyOfNotesScreen(),
    );
  }
}
