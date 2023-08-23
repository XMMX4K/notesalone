import 'package:notes/models/note_model.dart';

abstract class readNote {}

class readintail extends readNote {}

class readLoading extends readNote {}

class readSucsses extends readNote {
  final List<notemodel> rrr;
  readSucsses(this.rrr);
}

class readFail extends readNote {
  String errorMessage;
  readFail(this.errorMessage);
}
