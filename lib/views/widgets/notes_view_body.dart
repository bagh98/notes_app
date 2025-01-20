import 'package:flutter/material.dart';
import 'package:nots_app/views/widgets/notes_item.dart';

import 'custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppBAr(),
          SizedBox(height: 24),
          NotesItem()
        ],
      ),
    );
  }
}
