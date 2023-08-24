import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/readNoteCubit/readCubit.dart';
import 'package:notes/helper/Colors.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/views/editView.dart';
import 'package:notes/views/widgets/CusttomText.dart';

class NoteItemsBody extends StatelessWidget {
  const NoteItemsBody({required this.note});

  final notemodel note;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext) {
            return EditNoteItem(
              note: note,
            );
          }));
        },
        child: Container(
          decoration: BoxDecoration(
              color: MColor,
              borderRadius: BorderRadius.all(Radius.circular(32))),
          width: MediaQuery.of(context).size.width,
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ListTile(
                  title: CusttomText(
                    text: (note.title),
                    coolor: Colors.black,
                  ),
                  subtitle: CusttomText(
                    text: (note.Content),
                    fonsize: 20,
                    coolor: Colors.black.withOpacity(0.7),
                  ),
                  trailing: Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: IconButton(
                      onPressed: () {
                        ShowDIALOG(context);
                      },
                      icon: Icon(
                        Icons.delete,
                        size: 50,
                        color: Colors.black,
                      ),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 150),
                child: CusttomText(
                  text: (note.date.substring(0, 10)),
                  fonsize: 20,
                  coolor: Colors.black.withOpacity(0.9),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<dynamic> ShowDIALOG(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            actions: [
              TextButton(
                child: const Text('No'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              TextButton(
                child: const Text('Yes'),
                onPressed: () {
                  note.delete();
                  BlocProvider.of<readCubit>(context).feachNotes();

                  Navigator.of(context).pop();
                },
              ),
            ],
            title: const Text('Delete Note'),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Text('Are you sure want to Delete this note?'),
                ],
              ),
            ),
          );
        });
  }
}
