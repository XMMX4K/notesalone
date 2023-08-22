import 'package:flutter/material.dart';
import 'package:notes/views/widgets/CusttomTextFeild.dart';

class EditNoteItem extends StatelessWidget {
  const EditNoteItem({super.key});

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
              child: Icon(
                Icons.check,
                size: 30,
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
            CusttomTextFeild(CustText: 'Title'),
            SizedBox(
              height: 20,
            ),
            CusttomTextFeild(
              CustText: 'Content',
              maxlines: 6,
            )
          ],
        ),
      ),
    );
  }
}
