import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes/cubits/readNoteCubit/readState.dart';
import 'package:notes/helper/Colors.dart';
import 'package:notes/models/note_model.dart';

class readCubit extends Cubit<readNoteState> {
  readCubit() : super(readintail());

  List<notemodel>? notes;
  feachNotes() {
    var notebox = Hive.box<notemodel>(kmainbox);
    notes = notebox.values.toList();
  }
}
