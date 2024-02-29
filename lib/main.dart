import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:noteapp/add_note_cubit/add_note_cubit.dart';
import 'package:noteapp/constants.dart';
import 'package:noteapp/models/notes_model.dart';
import 'package:noteapp/simple%20-bloc-observer.dart';
import 'package:noteapp/views/notes_view.dart';

void main() async{
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (context)=>AddNoteCubit()),
    ],
      child:MaterialApp(
      debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: 'Poppins',
      brightness: Brightness.dark
    ),

    home: const NotesView(),
    ));
  }
}
