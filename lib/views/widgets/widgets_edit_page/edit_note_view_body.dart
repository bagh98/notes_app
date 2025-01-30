import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nots_app/models/note_model.dart';
import 'package:nots_app/views/widgets/custom_widgets/custom_app_bar.dart';
import 'package:nots_app/views/widgets/custom_widgets/custom_text_field.dart';

import '../../../cubits/notes_cubit/notes_cubit.dart';
import 'edit_note_colors_list.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 60),
            CustomAppBAr(
              onTap: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.subTitle = subTitle ?? widget.note.subTitle;
                widget.note.save();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();

                Navigator.pop(context);
              },
              text: 'Edit Notes',
              icon: Icons.check,
            ),
            const SizedBox(height: 50),
            CustomTextField(
                onChanged: (value) {
                  title = value;
                },
                hintText: widget.note.title),
            const SizedBox(height: 16),
            CustomTextField(
              hintText: widget.note.subTitle,
              maxLines: 5,
              onChanged: (value) {
                subTitle = value;
              },
            ),
            const SizedBox(height: 10),
            EditNoteColorsList(note: widget.note),
          ],
        ),
      ),
    );
  }
}
