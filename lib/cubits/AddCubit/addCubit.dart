import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes/cubits/AddCubit/addState.dart';
import 'package:notes/helper/Colors.dart';
import 'package:notes/models/note_model.dart';

class addcubit extends Cubit<AddNoteState> {
  addcubit() : super(addintail());

  addnote(notemodel note) async {
    emit(addLoading());
    try {
      var notebox = Hive.box(kmainbox);
      await notebox.add(note);
      emit(addSucsses());
    } catch (e) {
      emit(addFail(e.toString()));
    }
  }
}
