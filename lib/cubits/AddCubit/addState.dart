abstract class AddNoteState {}

class addintail extends AddNoteState {}

class addLoading extends AddNoteState {}

class addSucsses extends AddNoteState {}

class addFail extends AddNoteState {
  String errorMessage;
  addFail(this.errorMessage);
}
