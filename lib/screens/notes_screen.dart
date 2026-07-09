import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes2_app/busnisse_logic/show_notes__cubit/show_notes_cubit_cubit.dart';
import '../widgets/body_of_notes_screen.dart';
import '../widgets/custom_bottom_sheet.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ShowNotesCubit(),
      child: Scaffold(
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
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(26),
          ),
          child: Icon(Icons.add, color: Colors.black),
        ),
        body: BodyOfNotesScreen(),
      ),
    );
  }
}
