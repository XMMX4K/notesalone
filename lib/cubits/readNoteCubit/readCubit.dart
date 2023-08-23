import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes/cubits/readNoteCubit/readState.dart';
import 'package:notes/helper/Colors.dart';
import 'package:notes/models/note_model.dart';

class readCubit extends Cubit<readNote> {
  readCubit() : super(readintail());
  feachNotes() async {
    try {
      var notebox = Hive.box<notemodel>(kmainbox);
      List<notemodel> nooote = notebox.values.toList();
      emit(readSucsses(nooote));
    } catch (e) {
      emit(readFail(e.toString()));
    }
  }
}
