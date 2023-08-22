import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes/helper/Colors.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/views/FirstView.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('$kmainbox');
  Hive.registerAdapter(notemodelAdapter());
  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(brightness: Brightness.dark),
        debugShowCheckedModeBanner: false,
        home: MainView());
  }
}
