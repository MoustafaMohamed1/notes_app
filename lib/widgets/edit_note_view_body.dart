import 'package:flutter/material.dart';
import 'package:noteapp/widgets/custom_text_field.dart';
import 'package:noteapp/widgets/cutom_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(height: 50),
            CustomAppBar(
              title: 'Edit Notes',

              icon: Icons.check,
            ),
            SizedBox(
              height: 50,
            ),
            CustomTextfield(hintText: 'Title'),
            SizedBox(
              height: 18, 
            ),
            CustomTextfield(
              hintText: 'Content',
              maxLines: 5,
            ),
          ],
        ));
  }
}
