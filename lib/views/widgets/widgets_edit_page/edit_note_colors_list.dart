import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/note_model.dart';
import '../widgets_add_page/colors_list view .dart';

class EditNoteColorsList extends StatefulWidget {
  const EditNoteColorsList({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteColorsList> createState() => _EditNoteColorsListState();
}

class _EditNoteColorsListState extends State<EditNoteColorsList> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = KColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 26 * 2,
      child: ListView.builder(
        itemCount: KColors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6.0),
          child: GestureDetector(
            onTap: () {
              currentIndex = index;
              widget.note.color = KColors[index].value;
              setState(() {});
            },
            child: ColorItem(
              color: KColors[index],
              isActive: currentIndex == index,
            ),
          ),
        ),
      ),
    );
  }
}
