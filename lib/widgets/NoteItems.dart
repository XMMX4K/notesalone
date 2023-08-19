import 'package:flutter/material.dart';

class NoteItems extends StatelessWidget {
  const NoteItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Flutter Tips'),
      subtitle: Text('Find your way'),
      trailing: Text('12/5/2001'),
    );
  }
}
