part of 'show_notes_cubit_cubit.dart';

@immutable
sealed class ShowNotesCubitState {}

final class ShowNotesCubitInitial extends ShowNotesCubitState {}

final class ShowNotesCubitSuccess extends ShowNotesCubitState {
  final List<NoteModel> notes;

  ShowNotesCubitSuccess({required this.notes});
}

final class ShowNotesCubitFailur extends ShowNotesCubitState {
  final String errMessage;

  ShowNotesCubitFailur({required this.errMessage});
}
