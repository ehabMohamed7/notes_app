import 'package:flutter/material.dart';
import 'package:notes2_app/widgets/body_of_notes_screen.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: BodyOfNotesScreen());
  }
}
