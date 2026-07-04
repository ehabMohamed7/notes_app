import 'package:flutter/material.dart';
import 'package:notes2_app/widgets/custom_appbar.dart';
import 'package:notes2_app/widgets/note_item.dart';

class BodyOfNotesScreen extends StatelessWidget {
  const BodyOfNotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: const [SizedBox(height: 50), CustomAppBar(), NotesListView()],
      ),
    );
  }
}

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: NoteItem(),
          );
        },
      ),
    );
  }
}
