import 'package:flutter/material.dart';
import 'package:notes/helper/Colors.dart';
import 'package:notes/widgets/CusttomText.dart';

class NoteItemsBody extends StatelessWidget {
  const NoteItemsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        decoration: BoxDecoration(
            color: MColor, borderRadius: BorderRadius.all(Radius.circular(32))),
        width: MediaQuery.of(context).size.width,
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ListTile(
                title: CusttomText(text: 'Flutter Tips'),
                subtitle: CusttomText(text: 'Find Your Way '),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.delete,
                    size: 50,
                    color: Colors.black,
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(left: 150),
              child: CusttomText(text: '22/25/2250'),
            ),
          ],
        ),
      ),
    );
  }
}
