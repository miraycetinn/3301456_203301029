import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ProgressSection extends StatelessWidget {
  const ProgressSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: 16.0),
                child: SvgPicture.asset(
                  'assets/progress_icon.svg',
                  height: 100,
                  width: 100,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0,top: 20 ,bottom: 10),
              child: Container(alignment: Alignment.centerLeft, child: Text("Weeks",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30),)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: Get.width * 0.1,
                  height: Get.width * 0.1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff90A1DC)),
                ),
                Container(
                  width: Get.width * 0.1,
                  height: Get.width * 0.1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff90A1DC)),
                ),
                Container(
                  width: Get.width * 0.1,
                  height: Get.width * 0.1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff90A1DC)),
                ),
                Container(
                  width: Get.width * 0.1,
                  height: Get.width * 0.1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffF2F2F2)),
                ),
                Container(
                  width: Get.width * 0.1,
                  height: Get.width * 0.1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffF2F2F2)),
                ),
                Container(
                  width: Get.width * 0.1,
                  height: Get.width * 0.1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffF2F2F2)),
                ),
                Container(
                  width: Get.width * 0.1,
                  height: Get.width * 0.1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffF2F2F2)),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0,top: 20 ,bottom: 10),
              child: Container(alignment: Alignment.centerLeft, child: Text("Week-3",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 25,color: Colors.black.withOpacity(0.6)),)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: SizedBox(
                height: Get.width*0.15,
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: Get.width*0.15,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color(0xffF2F2F2)),
                    ),
                    Container(
                      width: double.infinity,
                      height: Get.width*0.15,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(width: Get.width*0.05,height: Get.width*0.05, decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color(0xffD9D9D9)),),
                        Container(width: Get.width*0.05,height: Get.width*0.05, decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color(0xffD9D9D9)),),
                        Container(width: Get.width*0.05,height: Get.width*0.05, decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color(0xffD9D9D9)),),
                        Container(width: Get.width*0.05,height: Get.width*0.05, decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color(0xffD9D9D9)),),
                        Container(width: Get.width*0.05,height: Get.width*0.05, decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color(0xffD9D9D9)),),
                        Container(width: Get.width*0.05,height: Get.width*0.05, decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color(0xffD9D9D9)),),
                        Container(width: Get.width*0.05,height: Get.width*0.05, decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color(0xffD9D9D9)),),
                      ],
                  ),
                    ),
                  Container(width: Get.width*0.5,
                    height: Get.width*0.15,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color(0xff90A1DC).withOpacity(0.4)),

                  )
                  ]
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Container(
                    width: Get.width * 0.1,
                    height: Get.width * 0.1,
                    margin: EdgeInsets.only(right: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff90A1DC)),
                  ),
                  Text("Monday",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black.withOpacity(0.6)),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Container(
                    width: Get.width * 0.1,
                    height: Get.width * 0.1,
                    margin: EdgeInsets.only(right: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff90A1DC)),
                  ),
                  Text("Tuesday",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black.withOpacity(0.6)),)
                ],
              ),
            ),Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Container(
                    width: Get.width * 0.1,
                    height: Get.width * 0.1,
                    margin: EdgeInsets.only(right: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff90A1DC)),
                  ),
                  Text("Wednesday",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black.withOpacity(0.6)),)
                ],
              ),
            ),Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Container(
                    width: Get.width * 0.1,
                    height: Get.width * 0.1,
                    margin: EdgeInsets.only(right: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff90A1DC)),
                  ),
                  Text("Thursday",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black.withOpacity(0.6)),)
                ],
              ),
            ),Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Container(
                    width: Get.width * 0.1,
                    height: Get.width * 0.1,
                    margin: EdgeInsets.only(right: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff90A1DC)),
                  ),
                  Text("Friday",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black.withOpacity(0.6)),)
                ],
              ),
            ),Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Container(
                    width: Get.width * 0.1,
                    height: Get.width * 0.1,
                    margin: EdgeInsets.only(right: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff90A1DC)),
                  ),
                  Text("Saturday",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black.withOpacity(0.6)),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
