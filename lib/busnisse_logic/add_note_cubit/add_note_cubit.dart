import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes2_app/busnisse_logic/add_note_cubit/add_note_states.dart';

class AddNoteCubit extends Cubit<AddNoteStates> {
  AddNoteCubit() : super(AddNoteInitialStates());
}
