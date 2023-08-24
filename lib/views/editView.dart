import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/readNoteCubit/readCubit.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/views/widgets/CusttomTextFeild.dart';

class EditNoteItem extends StatelessWidget {
  EditNoteItem({required this.note, this.title, this.content});

  final notemodel note;
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Container(
              width: 50,
              height: 50,
              margin: EdgeInsets.all(8),
              child: IconButton(
                onPressed: () {
                  note.title = title ?? note.title;
                  note.Content = content ?? note.Content;
                  note.save();
                  BlocProvider.of<readCubit>(context).feachNotes();
                  Navigator.pop(context);
                },
                icon: Icon(Icons.check),
                iconSize: 30,
              ),
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.all(Radius.circular(16))),
            ),
          )
        ],
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text(
          'Note Edit',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            CusttomTextFeild(
                onchange: (value) {
                  title = value;
                },
                CustText: '${note.title}'),
            SizedBox(
              height: 20,
            ),
            CusttomTextFeild(
              onchange: (value) {
                content = value;
              },
              CustText: '${note.Content}',
              maxlines: 6,
            )
          ],
        ),
      ),
    );
  }
}
