import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes2_app/busnisse_logic/show_notes__cubit/show_notes_cubit_cubit.dart';
import 'package:notes2_app/data/models/note_model.dart';

import 'note_item.dart';

class NotesListView extends StatefulWidget {
  const NotesListView({super.key});

  @override
  State<NotesListView> createState() => _NotesListViewState();
}

class _NotesListViewState extends State<NotesListView> {
  @override
  void initState() {
    BlocProvider.of<ShowNotesCubit>(context).showNotes();
    super.initState();
  }

  List<NoteModel> notes = [];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShowNotesCubit, ShowNotesCubitState>(
      builder: (context, state) {
        if (state is ShowNotesCubitFailur) {
          print('Failur state');
        }
        if (state is ShowNotesCubitSuccess) {
          notes = state.notes;
        }

        return Expanded(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 14, top: 10),
            child: ListView.builder(
              itemCount: notes.length,

              itemBuilder: (ctx, index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: NoteItem(note: notes[index]),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
