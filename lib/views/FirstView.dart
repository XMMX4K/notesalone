import 'package:flutter/material.dart';
import 'package:notes/widgets/NoteItems.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (BuildContext) {
                return Container();
              });
        },
        child: Icon(
          Icons.add,
          size: 30,
        ),
      ),
      appBar: AppBar(
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
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.all(Radius.circular(16))),
                child: IconButton(onPressed: () {}, icon: Icon(Icons.search))),
          )
        ],
      ),
      body: NoteItemsView(),
    );
  }
}
