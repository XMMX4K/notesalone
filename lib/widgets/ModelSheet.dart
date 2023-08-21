import 'package:flutter/material.dart';
import 'package:notes/widgets/CusttomContainer.dart';
import 'package:notes/widgets/CusttomTextFeild.dart';

class ModelSheet extends StatelessWidget {
  const ModelSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            CusttomTextFeild(
              CustText: 'Title',
            ),
            SizedBox(
              height: 20,
            ),
            CusttomTextFeild(
              CustText: 'Content',
              maxlines: 5,
            ),
            SizedBox(
              height: 20,
            ),
            CusttomContainer(
              ontap: () {},
            )
          ],
        ),
      ),
    );
  }
}
