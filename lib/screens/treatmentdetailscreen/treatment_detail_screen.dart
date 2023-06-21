import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TreatmentDetailScreen extends StatelessWidget {
  final String imagePath;
  final String treatmentType;
  final String title;
  final List<List<String>> ingredients;

  const TreatmentDetailScreen(
      {Key? key,
      required this.treatmentType,
      required this.title,
      required this.ingredients,
      required this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: Get.height * 0.2,
              width: Get.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(imagePath),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: SizedBox(
                height: Get.height * 0.75,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          treatmentType,
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(title,style: TextStyle(fontSize: 25),),
                      ),
                      SizedBox(
                        width: Get.width,
                        height: Get.height * 0.1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Ingredients:",
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                            ListView.builder(
                              itemCount: ingredients.length,
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemBuilder: (context, index) => Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(20),
                                        ),
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image:
                                              AssetImage(ingredients[index][0]),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(ingredients[index][1])
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, top: 20),
                        child: Text(
                          "Interdum et malesuada fames ac ante ipsum primis in faucibus. In eget nibh iaculis, malesuada velit et, porta elit. In quis tortor eget nulla ullamcorper lacinia. In tincidunt, purus sit amet pharetra lobortis, justo purus molestie sapien, eget eleifend metus mauris sit amet libero. Pellentesque suscipit sed tortor sed varius. Ut in metus tellus. Aliquam ac imperdiet risus. Vestibulum in tristique diam. Vivamus gravida arcu magna, at bibendum risus commodo a. Interdum et malesuada fames ac ante ipsum primis in faucibus. In eget nibh iaculis, malesuada velit et, porta elit. In quis tortor eget nulla ullamcorper lacinia. In tincidunt, purus sit amet pharetra lobortis, justo purus molestie sapien, eget eleifend metus mauris sit amet libero. Pellentesque suscipit sed tortor sed varius. Ut in metus tellus. Aliquam ac imperdiet risus. Vestibulum in tristique diam. Vivamus gravida arcu magna, at bibendum risus commodo a. Interdum et malesuada fames ac ante ipsum primis in faucibus. In eget nibh iaculis, malesuada velit et, porta elit. In quis tortor eget nulla ullamcorper lacinia. In tincidunt, purus sit amet pharetra lobortis, justo purus molestie sapien, eget eleifend metus mauris sit amet libero. Pellentesque suscipit sed tortor sed varius. Ut in metus tellus. Aliquam ac imperdiet risus. Vestibulum in tristique diam. Vivamus gravida arcu magna, at bibendum risus commodo a.",
                          style: TextStyle(fontSize: 20),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
