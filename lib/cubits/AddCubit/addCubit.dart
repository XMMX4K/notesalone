import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes/cubits/AddCubit/addState.dart';
import 'package:notes/helper/Colors.dart';
import 'package:notes/models/note_model.dart';

class addcubit extends Cubit<AddNoteState> {
  addcubit() : super(addintail());

  addnote(notemodel note) async {
    try {
      var notebox = Hive.box(kmainbox);
      emit(addSucsses());
      await notebox.add(note);
    } catch (e) {
      emit(addFail(e.toString()));
    }
  }
}
