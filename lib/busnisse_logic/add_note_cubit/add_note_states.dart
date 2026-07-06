abstract class AddNoteStates {}

class AddNoteInitialStates extends AddNoteStates {}

class AddNoteLoadingStates extends AddNoteStates {}

class AddNoteSuccessStates extends AddNoteStates {}

class AddNotefailurStates extends AddNoteStates {
  final String? errMessage;

  AddNotefailurStates({required this.errMessage});
}
