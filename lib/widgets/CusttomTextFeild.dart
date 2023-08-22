import 'package:flutter/material.dart';
import 'package:notes/helper/Colors.dart';

class CusttomTextFeild extends StatelessWidget {
  const CusttomTextFeild(
      {required this.CustText, this.maxlines = 1, this.onsaved});
  final String CustText;
  final int maxlines;
  final void Function(String?)? onsaved;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return 'Feild is required';
          } else {
            return null;
          }
        },
        onSaved: onsaved,
        maxLines: maxlines,
        decoration: InputDecoration(
            hintText: '$CustText',
            hintStyle:
                TextStyle(fontSize: 20, color: Colors.grey.withOpacity(0.5)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(color: maColor)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(color: maColor))),
      ),
    );
  }
}
