import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SelectTile extends StatelessWidget {
  final String iconPath;
  final String title;
  final Function onClick;

  const SelectTile(
      {Key? key,
      required this.iconPath,
      required this.title,
      required this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onClick();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.3),
                borderRadius: BorderRadius.circular(20),
              ),
              child: SvgPicture.asset(
                iconPath,
                height: 50,
                width: 50,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.centerRight,
                child: SvgPicture.asset(
                  'assets/right_arrow_icon.svg',
                  height: 25,
                  width: 25,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
