import 'package:flutter/material.dart';

import 'cutom_app_bar.dart';
import 'notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.symmetric(horizontal: 23),
        child:  Column(
          children: [
             SizedBox(height: 50),
            CustomAppBar(
              icon: Icons.add,
              title: 'Notes',
            ),
            Expanded(
              child: NotesListView(),
            ),
          ],
        ));
  }
}
