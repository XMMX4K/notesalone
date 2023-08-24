import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/readNoteCubit/readCubit.dart';
import 'package:notes/cubits/readNoteCubit/readState.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/views/editView.dart';
import 'package:notes/views/widgets/NoteItemsBody.dart';

class NoteItemsView extends StatefulWidget {
  const NoteItemsView({
    super.key,
  });

  @override
  State<NoteItemsView> createState() => _NoteItemsViewState();
}

class _NoteItemsViewState extends State<NoteItemsView> {
  @override
  void initState() {
    BlocProvider.of<readCubit>(context).feachNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<readCubit, readNoteState>(builder: (context, state) {
      List<notemodel> notes = BlocProvider.of<readCubit>(context).notes ?? [];
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: notes.length,
                itemBuilder: (context, index) {
                  return NoteItemsBody(
                      note: notes[index],
                      onttap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext) {
                          return EditNoteItem();
                        }));
                      });
                },
              ),
            )
          ],
        ),
      );
    });
  }
}
