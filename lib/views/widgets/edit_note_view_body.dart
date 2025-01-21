import 'package:flutter/material.dart';
import 'package:nots_app/views/widgets/custom_app_bar.dart';
import 'package:nots_app/views/widgets/custom_text_field.dart';

import 'custom_buttom.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 60),
            CustomAppBAr(
              text: 'Edit Notes',
              icon: Icons.check,
            ),
            SizedBox(height: 50),
            CustomTextField(hintText: 'Title'),
            SizedBox(height: 16),
            CustomTextField(hintText: 'Content', maxLines: 5),
          ],
        ),
      ),
    );
  }
}
