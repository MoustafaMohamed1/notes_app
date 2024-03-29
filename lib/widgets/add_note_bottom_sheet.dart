import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:noteapp/add_note_cubit/add_note_cubit.dart';
import 'package:noteapp/add_note_cubit/add_note_states.dart';

import 'add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: BlocConsumer<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return ModalProgressHUD(
                  inAsyncCall: state is AddNoteLoading ? true : false,
                  child: AddNoteForm());
            },
            listener: (context, state) {
              if (state is AddNoteFailure) {
                print('failed ${state.errMessage}');
              }
              if (state is AddNoteSucces) {
                Navigator.pop(context);
              }
            },
          ),
        ));
  }
}
