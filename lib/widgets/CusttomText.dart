import 'package:flutter/material.dart';

class CusttomText extends StatelessWidget {
  const CusttomText(
      {required this.text, this.fonsize = 25, required this.coolor});

  final String text;
  final double fonsize;
  final Color coolor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        '$text',
        style: TextStyle(color: coolor, fontSize: fonsize),
      ),
    );
  }
}
