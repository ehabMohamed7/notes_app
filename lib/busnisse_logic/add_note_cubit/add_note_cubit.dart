import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes2_app/busnisse_logic/add_note_cubit/add_note_states.dart';
import 'package:notes2_app/constants.dart';
import 'package:notes2_app/data/models/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteStates> {
  AddNoteCubit() : super(AddNoteInitialStates());

  Future<void> addNote(NoteModel note) async {
    emit(AddNoteLoadingStates());

    try {
      var noteBox = Hive.box<NoteModel>(kNotesBox);
      await noteBox.add(note);
      emit(AddNoteSuccessStates());
    } catch (e) {
      emit(AddNotefailurStates(errMessage: e.toString()));
    }
  }
}
