import 'package:hive/hive.dart';

part 'note_model.g.dart';

@HiveType(typeId: 0)
class notemodel extends HiveObject {
  @HiveField(1)
  final String title;
  @HiveField(2)
  final String Content;
  @HiveField(3)
  final String date;
  @HiveField(4)
  final int color;

  notemodel(
      {required this.title,
      required this.Content,
      required this.date,
      required this.color});
}
