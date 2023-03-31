
import 'package:flutter/material.dart';

import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: const [
          CustomAppBar(
            text: 'Edit Note',
            icon: Icons.check 
          ),
           SizedBox(
            height: 32,
          ),
           CustomTextField(hint: 'title'),
           SizedBox(
            height: 16,
          ),
           CustomTextField(
            hint: 'content',
            maxLines: 5,
          )
        ],
      ),
    );
  }
}