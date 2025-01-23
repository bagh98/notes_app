import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:nots_app/models/note_model.dart';

import '../../constants.dart';

part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());

  void addNote(NoteModel note) async {
    emit(AddNotesLoading());
    try {
      var notesBox = Hive.box<NoteModel>(KNotesBox);
      emit(AddNotesSuccess());
      await notesBox.add(note);
    } catch (e) {
      AddNotesFailure(errorMessage: ' ${e.toString()}');
    }
  }
}
