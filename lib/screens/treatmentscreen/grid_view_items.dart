import 'package:flutter/material.dart';

class GridViewItems extends StatelessWidget {
  final String category;
  final String title;
  final String imagePath;

  const GridViewItems(
      {Key? key,
      required this.category,
      required this.title,
      required this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 14,
              child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(imagePath),
                      ),
                      borderRadius: BorderRadius.circular(15)))),
          Expanded(child: SizedBox()),
          Expanded(
            child: Text(
              category,
            ),
          ),
          Expanded(
            child: Text(
              title,
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}
