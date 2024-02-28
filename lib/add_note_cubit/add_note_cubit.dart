import 'package:noteapp/add_note_cubit/add_note_states.dart';
import 'package:bloc/bloc.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
}