import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:notes2_app/data/models/note_model.dart';

part 'show_notes_cubit_state.dart';

class ShowNotesCubitCubit extends Cubit<ShowNotesCubitState> {
  ShowNotesCubitCubit() : super(ShowNotesCubitInitial());
}
