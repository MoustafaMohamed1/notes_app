import 'package:flutter/material.dart';
import 'package:noteapp/widgets/cutom_app_bar.dart';
class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(padding: EdgeInsets.symmetric(horizontal: 24),
      child:const Column(
      children: [
        const SizedBox(height: 50),
        const CustomAppBar(title: 'Edit Notes',icon: Icons.check,),
      ],
    ));
  }
}