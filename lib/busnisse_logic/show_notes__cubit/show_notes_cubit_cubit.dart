import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:notes2_app/constants.dart';
import 'package:notes2_app/data/models/note_model.dart';

part 'show_notes_cubit_state.dart';

class ShowNotesCubit extends Cubit<ShowNotesCubitState> {
  ShowNotesCubit() : super(ShowNotesCubitInitial());

  void showNotes() {
    try {
      var noteBox = Hive.box<NoteModel>(kNotesBox);
      List<NoteModel> notes = noteBox.values.toList();
      emit(ShowNotesCubitSuccess(notes: notes));
    } catch (e) {
      emit(ShowNotesCubitFailur(errMessage: e.toString()));
    }
  }
}
