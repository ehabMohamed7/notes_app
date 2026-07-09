import 'package:flutter/material.dart';
import 'package:notes2_app/data/models/note_model.dart';

import '../screens/edite_notes_screen.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (context) => EditeNotesScreen()));
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 24),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                note.title,
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),

              subtitle: Text(
                note.subTitle,
                style: TextStyle(color: Colors.black45, fontSize: 18),
              ),

              trailing: IconButton(
                onPressed: () {
                  // TODO remember to implementation
                },

                icon: Icon(Icons.delete, color: Colors.black, size: 30),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 30, top: 16),
              child: Text(
                note.date,
                style: TextStyle(color: Colors.black45, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
