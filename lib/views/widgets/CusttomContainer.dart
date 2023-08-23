import 'package:flutter/material.dart';
import 'package:notes/helper/Colors.dart';

class CusttomContainer extends StatelessWidget {
  const CusttomContainer({this.ontap, this.isloadingg = false});

  final void Function()? ontap;
  final bool isloadingg;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        child: Center(
          child: isloadingg
              ? CircularProgressIndicator()
              : Text(
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
