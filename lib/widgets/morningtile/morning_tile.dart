import 'package:flutter/material.dart';

class MorningTile extends StatefulWidget {
   MorningTile(
      {Key? key, required this.title, required this.description, required this.isChecked})
      : super(key: key);
  final String title;
  final String description;
  bool isChecked;

  @override
  State<MorningTile> createState() => _MorningTileState();
}

class _MorningTileState extends State<MorningTile> {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Checkbox(
                value: widget.isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    widget.isChecked = value!;
                  });
                }),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 15),
                  child: Text(
                    widget.title,
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
                Text(
                  widget.description,
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}
