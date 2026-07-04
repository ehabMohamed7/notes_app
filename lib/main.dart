import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:notes2_app/screens/notes_screen.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => NotesApp(), // Wrap your app
    ),
  );
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
