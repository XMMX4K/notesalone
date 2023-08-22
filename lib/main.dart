import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes/cubits/AddCubit/addCubit.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => addcubit(),
        )
      ],
      child: MaterialApp(
          theme: ThemeData(brightness: Brightness.dark),
          debugShowCheckedModeBanner: false,
          home: MainView()),
    );
  }
}
