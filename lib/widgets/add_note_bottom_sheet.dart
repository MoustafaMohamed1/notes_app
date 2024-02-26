import 'package:flutter/material.dart';
import 'package:noteapp/widgets/custom_text_field.dart';

import 'custom_bottom.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
          children: [
            const SizedBox(
              height: 32,
            ),
            CustomTextfield(
              hintText: 'title',
            ),
            const SizedBox(height: 24),
            CustomTextfield(
              hintText: 'Content',
              maxLines: 5,
            ),
            SizedBox(height: 32,),
            CustomBottom(),
          ],
    ),),);
  }
}
