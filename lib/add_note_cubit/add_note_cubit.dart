import 'package:hive_flutter/adapters.dart';
import 'package:noteapp/add_note_cubit/add_note_states.dart';
import 'package:bloc/bloc.dart';
import 'package:noteapp/constants.dart';
import 'package:noteapp/models/notes_model.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box(kNotesBox);
      emit(AddNoteSucces());
      await notesBox.add(note);
    } catch (e) {
      AddNoteFailure(e.toString());
    }
  }
}
