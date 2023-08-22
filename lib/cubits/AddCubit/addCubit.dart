import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/AddCubit/addState.dart';
import 'package:notes/models/note_model.dart';

class addcubit extends Cubit<AddNoteState> {
  addcubit() : super(addintail());

  addnote(notemodel note) {}
}
