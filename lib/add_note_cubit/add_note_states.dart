class AddNoteState{}
class AddNoteInitial extends AddNoteState{}
class AddNoteLoading extends AddNoteState{}
class AddNoteSucces extends AddNoteState{}
class AddNoteFailure extends AddNoteState{
  final String errMessage;

  AddNoteFailure(this.errMessage);
}