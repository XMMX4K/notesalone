import 'package:flutter/material.dart';
import 'package:notes/widgets/CusttomTextFeild.dart';

class ModelSheet extends StatelessWidget {
  const ModelSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          CusttomTextFeild()
        ],
      ),
    );
  }
}
