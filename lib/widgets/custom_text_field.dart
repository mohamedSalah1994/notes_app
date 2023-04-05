import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hint, this.maxLines = 1, this.onSaved, this.onChanged});
  final String hint;
  final int maxLines;
  final void Function(String?)? onSaved;
  final void Function(String?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      onChanged: onChanged,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'field is required';
        }
        return null;
      },
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
      textAlign: TextAlign.start,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: kPrimaryColor),
        border: BuildBorder(),
        enabledBorder: BuildBorder(),
        focusedBorder: BuildBorder(kPrimaryColor),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  OutlineInputBorder BuildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}
