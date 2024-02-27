import 'package:flutter/material.dart';
import 'package:noteapp/constants.dart';
class CustomTextfield extends StatelessWidget {
  const CustomTextfield({this.onSaved,required this.hintText, this.maxLines = 1});
  final String hintText;
  final int maxLines;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
       validator: (value){
        if(value?.isEmpty ?? true){
          return 'Field is required';
        }
       },
       cursorColor: kPrimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,hintStyle: const TextStyle(color: kPrimaryColor),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),

      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(
        color: color ?? Colors.white,
      ),
      );
  }
}
