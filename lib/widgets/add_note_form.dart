
import 'package:flutter/material.dart';

import 'custom_bottom.dart';
import 'custom_text_field.dart';
class AddNoteForm extends StatefulWidget {
  @override
  _AddNoteFormState createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        autovalidateMode: autovalidateMode,
        child: Column(
          children: [
            const SizedBox(
              height: 32,
            ),
            CustomTextfield(
              onSaved: (value){
                title = value;
              },
              hintText: 'title',
            ),
            const SizedBox(height: 18),
            CustomTextfield(
              onSaved: (value){
                subTitle = value;
              },
              hintText: 'Content',
              maxLines: 5,
            ),
            const SizedBox(
              height: 60,
            ),
            CustomBottom(
              onTab: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                } else {
                  setState(() {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {

                    });
                  });
                }
              },
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ));
  }
}