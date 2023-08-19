import 'package:flutter/material.dart';

class CusttomText extends StatelessWidget {
  const CusttomText({required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        '$text',
        style: TextStyle(color: Colors.black, fontSize: 25),
      ),
    );
  }
}
