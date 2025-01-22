import 'package:flutter/material.dart';
import 'package:nots_app/views/widgets/custom_app_bar.dart';
import 'package:nots_app/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
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
