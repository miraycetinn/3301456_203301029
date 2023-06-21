import 'package:flutter/material.dart';
import 'package:fresh/screens/treatmentdetailscreen/treatment_detail_screen.dart';

class GridViewItems extends StatelessWidget {
  final String category;
  final String title;
  final String imagePath;

  const GridViewItems({Key? key,
    required this.category,
    required this.title,
    required this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onDoubleTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
            TreatmentDetailScreen(treatmentType: category,
                title: title,
                ingredients: [["assets/img_2.png", "Avacado"], ["assets/img_3.png", "Mango"], ["assets/img_4.png", "Cocoa Powder"]],
                imagePath: imagePath),));
      },
      child: Container(
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
      ),
    );
  }
}
