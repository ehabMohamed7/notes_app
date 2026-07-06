import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes2_app/constants.dart';
import 'package:notes2_app/data/models/note_model.dart';
import 'screens/notes_screen.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox(kNotesBox);
  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      home: NotesScreen(),
    );
  }
}
