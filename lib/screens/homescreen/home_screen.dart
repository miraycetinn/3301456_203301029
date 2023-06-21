import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fresh/globals.dart' as globals;
import 'package:fresh/widgets/checkboxitem/check_box_item.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Dio dio = Dio();
    Future<Null> _downloadNetworkImage() async {
      try {
        var dir = await getTemporaryDirectory();
        print(dir);
        await dio.download(
            "https://avatars.dicebear.com/v2/avataaars/${globals.user?.fullName ?? ""}.svg?options[mood][]=happy",
            '${dir.path}/image.svg');
      } catch (exp) {}
    }

    _downloadNetworkImage();
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              SvgPicture.asset(
                'assets/home_page_top.svg',
                height: Get.height * 0.3,
                alignment: Alignment.topCenter,
                width: double.infinity,
              ),
              FutureBuilder(
                  future: getTemporaryDirectory(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Positioned(
                        top: 120,
                        right: 40,
                        child: SvgPicture.asset(
                          '${snapshot.data?.path}/image.svg',
                          height: 105,
                          alignment: Alignment.topCenter,
                          width: 105,
                        ),
                      );
                    } else {
                      return Positioned(
                        top: 120,
                        right: 40,
                        child: Image.asset(
                          'assets/img.png',
                          width: 105,
                          height: 105,
                        ),
                      );
                    }
                  }),
              const Positioned(
                top: 50,
                left: 20,
                child: Text(
                  'Hello,',
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                top: 90,
                left: 20,
                child: Text(
                  globals.user?.fullName ?? '',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Today's plan",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onLongPress: () {
                    Get.toNamed("/morning-routine");
                  },
                  child: CheckBoxItem(
                      time: "09:00",
                      activityName: "Morning Routine",
                      assetPath: "assets/morning_routine.svg"),
                ),
                InkWell(
                  onLongPress: () {
                    Get.toNamed("/skin-log");
                  },
                  child: CheckBoxItem(
                      time: "13:00",
                      activityName: "Skin Log",
                      assetPath: "assets/diary_log.svg"),
                ),
                InkWell(
                  onLongPress: () {
                    Get.toNamed("/night-routine");
                  },
                  child: CheckBoxItem(
                      time: "21:00",
                      activityName: "Night Routine",
                      assetPath: "assets/night_routine.svg"),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Color(0xFF6179CD),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Daily Dose Of Skincare Advice",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Cleanse your face twice daily, hydrate with a suitable moisturizer, and always protect your skin with sunscreen. Consistency is key for healthy, glowing skin.",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: ElevatedButton(
              onPressed: () {
                dio
                    .post("https://jsonplaceholder.typicode.com/posts", data: {
                      'userId': 12,
                      'title': globals.user?.fullName,
                      'body': "loremipsum dolar si"
                    })
                    .then((value) => print(value.toString()))
                    .catchError((err) => print(err.toString()));
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF6179CD),
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: Text("Api ya veri yolla öylesine"),
            ),
          )
        ],
      ),
    );
  }
}
