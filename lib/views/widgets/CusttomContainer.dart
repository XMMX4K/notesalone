import 'package:flutter/material.dart';
import 'package:notes/helper/Colors.dart';

class CusttomContainer extends StatelessWidget {
  const CusttomContainer({this.ontap});

  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        child: Center(
          child: Text(
            'Add',
            style: TextStyle(fontSize: 22, color: Colors.black),
          ),
        ),
        width: 300,
        height: 60,
        decoration: BoxDecoration(
            color: maColor,
            borderRadius: BorderRadius.all(Radius.circular(32))),
      ),
    );
  }
}
