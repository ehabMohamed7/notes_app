import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes2_app/busnisse_logic/add_note_cubit/add_note_cubit.dart';
import 'package:notes2_app/constants.dart';
import 'package:notes2_app/data/models/note_model.dart';
import 'package:notes2_app/simple_bloc_obsever.dart';
import 'screens/notes_screen.dart';

void main() async {
  Bloc.observer = SimpleBlocObsever();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);
  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (ctx) => AddNoteCubit())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
        home: NotesScreen(),
      ),
    );
  }
}
