import 'package:flutter/material.dart';
import 'package:notes2_app/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14),
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: NoteItem(),
            );
          },
        ),
      ),
    );
  }
}
