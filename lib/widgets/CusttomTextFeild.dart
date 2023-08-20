import 'package:flutter/material.dart';

class CusttomTextFeild extends StatelessWidget {
  const CusttomTextFeild({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'Title',
            hintStyle:
                TextStyle(fontSize: 20, color: Colors.grey.withOpacity(0.5)),
            enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Colors.lightGreen.withOpacity(0.5))),
            border: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Colors.lightGreen.withOpacity(0.5)))),
      ),
    );
  }
}
