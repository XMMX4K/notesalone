import 'package:hive/hive.dart';

part 'note_model.g.dart';

@HiveType(typeId: 0)
class notemodel extends HiveObject {
  @HiveField(1)
  String title;
  @HiveField(2)
  String Content;
  @HiveField(3)
  final String date;
  @HiveField(4)
  int color;

  notemodel(
      {required this.title,
      required this.Content,
      required this.date,
      required this.color});
}
