import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CheckBoxItem extends StatefulWidget {
  final String time;
  final String activityName;
  final String assetPath;
  bool? isChecked;

  CheckBoxItem(
      {Key? key,
      required this.time,
      required this.activityName,
      required this.assetPath})
      : super(key: key);

  @override
  State<CheckBoxItem> createState() => _CheckBoxItemState();
}

class _CheckBoxItemState extends State<CheckBoxItem> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: SizedBox(
              width: 24,
              height: 24,
              child: Checkbox(
                checkColor: Colors.white,
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                    widget.isChecked = isChecked;
                  });
                },
              ),
            ),
          ),
          SvgPicture.asset(widget.assetPath, width: 50),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.activityName,
                    style:
                        TextStyle(fontWeight: FontWeight.w400, fontSize: 16)),
                Opacity(
                  opacity: 0.7,
                  child: Text(widget.time),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
