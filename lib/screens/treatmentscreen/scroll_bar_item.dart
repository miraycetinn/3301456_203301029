import 'package:flutter/material.dart';

class ScrollBarItem extends StatefulWidget {
  final String title;
  final bool isActive;
  const ScrollBarItem({Key? key, required this.title, required this.isActive}) : super(key: key);

  @override
  State<ScrollBarItem> createState() => _ScrollBarItemState();
}

class _ScrollBarItemState extends State<ScrollBarItem> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 35,
        width: 70,
        alignment: Alignment.center,
        child: Text(widget.title ),
        decoration: BoxDecoration(
            color: Color.fromRGBO(217, 217, 217, 0.45),
            borderRadius: BorderRadius.circular(49)),
      ),
    );
  }
}
