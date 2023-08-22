import 'package:flutter/material.dart';
import 'package:notes/helper/Colors.dart';
import 'package:notes/views/widgets/CusttomText.dart';

class NoteItemsBody extends StatelessWidget {
  const NoteItemsBody({required this.onttap});

  final void Function()? onttap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: GestureDetector(
        onTap: onttap,
        child: Container(
          decoration: BoxDecoration(
              color: MColor,
              borderRadius: BorderRadius.all(Radius.circular(32))),
          width: MediaQuery.of(context).size.width,
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ListTile(
                  title: CusttomText(
                    text: 'Flutter Tips',
                    coolor: Colors.black,
                  ),
                  subtitle: CusttomText(
                    text: 'Find Your Way ',
                    fonsize: 20,
                    coolor: Colors.black.withOpacity(0.7),
                  ),
                  trailing: Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.delete,
                        size: 50,
                        color: Colors.black,
                      ),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 150),
                child: CusttomText(
                  text: '22/25/2250',
                  fonsize: 20,
                  coolor: Colors.black.withOpacity(0.9),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
