import 'package:flutter/material.dart';
import 'package:notes/widgets/NoteItemsBody.dart';

class NoteItemsView extends StatelessWidget {
  const NoteItemsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          NoteItemsBody()
        ],
      ),
    );
  }
}
