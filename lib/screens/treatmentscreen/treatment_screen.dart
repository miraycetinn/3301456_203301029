import 'package:flutter/material.dart';
import 'package:fresh/screens/treatmentscreen/grid_view_items.dart';
import 'package:fresh/screens/treatmentscreen/scroll_bar_item.dart';
import 'package:get/get.dart';

class TreatmentScreen extends StatelessWidget {
  TreatmentScreen({Key? key}) : super(key: key);
  final productList=[["title","category","assets/img.png"]];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            child: Text("Fotoğraf"),
            color: Colors.red,
            width: double.infinity,
            height: 50,
          ),
          Text(
            "DIY Treatments",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
              width: Get.width * 0.5,
              alignment: Alignment.center,
              child: Text(
                "Organic beauty recipes to make at home",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              )),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ScrollBarItem(title: "Title", isActive: false),
                  ScrollBarItem(title: "Title", isActive: false),
                  ScrollBarItem(title: "Title", isActive: false),
                  ScrollBarItem(title: "Title", isActive: false),
                  ScrollBarItem(title: "Title", isActive: false),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: GridView.builder(
                itemCount: productList.length,

                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 3 / 5,
                    crossAxisSpacing: 25.0,
                    mainAxisSpacing: 25.0),
                itemBuilder: (BuildContext context, int index) {
                  return  GridViewItems( title: productList[index][0], category: productList[index][1], imagePath: productList[index][2],);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
