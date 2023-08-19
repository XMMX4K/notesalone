import 'package:flutter/material.dart';
import 'package:notes/helper/Colors.dart';

class NoteItemsBody extends StatelessWidget {
  const NoteItemsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: MColor, borderRadius: BorderRadius.all(Radius.circular(32))),
      width: MediaQuery.of(context).size.width,
      height: 200,
      child: Column(
        children: [
          ListTile(
            title: Text('Flutter Tips'),
            subtitle: Text('Find your way'),
            trailing: Text('12/5/2001'),
          ),
        ],
      ),
    );
  }
}
