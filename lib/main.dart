import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes/SimpleBlocObserve.dart';
import 'package:notes/cubits/AddCubit/addCubit.dart';
import 'package:notes/cubits/readNoteCubit/readCubit.dart';
import 'package:notes/helper/Colors.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/views/FirstView.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(notemodelAdapter());

  Bloc.observer = SimpleBlocObserve();
  await Hive.openBox('$kmainbox');

  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return readCubit();
      },
      child: MaterialApp(
          theme: ThemeData(brightness: Brightness.dark),
          debugShowCheckedModeBanner: false,
          home: MainView()),
    );
  }
}
