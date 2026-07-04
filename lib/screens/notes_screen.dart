import 'package:flutter/material.dart';
import 'package:notes2_app/widgets/body_of_notes_screen.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(26)),
        child: Icon(Icons.add),
      ),
      body: BodyOfNotesScreen(),
    );
  }
}
