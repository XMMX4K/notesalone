// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ColorItems extends StatelessWidget {
  const ColorItems({
    Key? key,
    required this.isActive,
    required this.color,
  }) : super(key: key);

  final bool isActive;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 30,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 25,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            backgroundColor: color,
            radius: 30,
          );
  }
}

class ColorsList extends StatefulWidget {
  const ColorsList({super.key});

  @override
  State<ColorsList> createState() => _ColorsListState();
}

class _ColorsListState extends State<ColorsList> {
  int Currentstate = 0;
  List<Color> color = const [
    Color(0xffef7c8e),
    Color(0xfffae8e0),
    Color(0xffb6e2d3),
    Color(0xffd8a7b1),
    Color(0xffb6e5d8),
    Color(0xfffbe5c8),
    Color(0xff8fdde7),
    Color(0xffe3e8e9),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: color.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: GestureDetector(
                onTap: () {
                  Currentstate = index;
                  setState(() {});
                },
                child: ColorItems(
                  color: color[index],
                  isActive: Currentstate == index,
                ),
              ),
            );
          }),
    );
  }
}
