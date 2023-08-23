import 'package:flutter/material.dart';
import 'package:notes/helper/Colors.dart';
import 'package:notes/views/widgets/ModelSheet.dart';
import 'package:notes/views/widgets/NoteItems.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton(
        backgroundColor: maColor,
        onPressed: () {
          showModalBottomSheet(
              showDragHandle: true,
              isScrollControlled: true,
              shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              context: context,
              builder: (BuildContext) {
                return ModelSheet();
              });
        },
        child: Icon(
          Icons.add,
          size: 30,
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            'Notes',
            style: TextStyle(fontSize: 25),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Container(
                width: 50,
                height: 50,
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.all(Radius.circular(16))),
                child: Icon(
                  (Icons.search),
                  size: 30,
                )),
          )
        ],
      ),
      body: NoteItemsView(),
    );
  }
}
