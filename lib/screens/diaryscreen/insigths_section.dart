import 'package:flutter/material.dart';
import 'package:fresh/models/database.handler.dart';
import 'package:fresh/models/skin_log.model.dart';
import 'package:get/get.dart';
import 'package:pie_chart/pie_chart.dart';

class InsightsSection extends StatefulWidget {
  const InsightsSection({Key? key}) : super(key: key);

  @override
  State<InsightsSection> createState() => _InsightsSectionState();
}

class _InsightsSectionState extends State<InsightsSection> {
  Map<String, double> dataMap = {
    "Normal": 10,
    "Dry": 20,
    "Oily": 9,
    "Itchy": 1,
  };

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.1),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 20, right: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Text(
                      "June",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.35,
                    child: FutureBuilder<List<SkinLog>>(
                      future: DatabaseHandler().retrieveSkinLogs(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          var days = snapshot.data?.map((e) => e.dateTime.day);

                          return GridView.count(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            crossAxisCount: 7,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            childAspectRatio: 1,
                            children: List.generate(31, (index) {
                              var color = days?.firstWhere(
                                    (element) => element == index,
                                orElse: () {
                                  return -1;
                                },
                              ) ==
                                  -1
                                  ? Colors.white38
                                  : Color(0xFF6179CD);

                              return Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(color: color),
                                child: Text(index.toString()),
                              );
                            }),
                          );
                        }
                        if (snapshot.hasError) {
                          print("error");
                          print(snapshot.data);
                          print(snapshot.error.toString());
                          return Center(
                            child: Text(snapshot.error.toString()),
                          );
                        } else {
                          return Center(
                            child: Text("Error"),
                          );
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          FutureBuilder<List<SkinLog>>(
            future: DatabaseHandler().retrieveSkinLogs(),
            builder: (context, snapshot) {
              dataMap = {
                "Normal": double.parse(
                  snapshot.data
                      ?.where((element) => element.skinStatus == "normal")
                      .toList()
                      .length
                      .toString() ??
                      "0",
                ),
                "Dry": double.parse(
                  snapshot.data
                      ?.where((element) => element.skinStatus == "dry")
                      .toList()
                      .length
                      .toString() ??
                      "0",
                ),
                "Oily": double.parse(
                  snapshot.data
                      ?.where((element) => element.skinStatus == "oily")
                      .toList()
                      .length
                      .toString() ??
                      "0",
                ),
                "Itchy": double.parse(
                  snapshot.data
                      ?.where((element) => element.skinStatus == "itchy")
                      .toList()
                      .length
                      .toString() ??
                      "0",
                ),
              };
              return PieChart(
                colorList: [
                  Color(0xFF5FA1C6),
                  Color(0xFFCD6969),
                  Color(0xFFE49E5C),
                  Color(0xFF206A94),
                ],
                dataMap: dataMap,
                animationDuration: const Duration(seconds: 3),
                chartLegendSpacing: 32,
                chartRadius: MediaQuery.of(context).size.width / 2,
                initialAngleInDegree: 0,
                chartType: ChartType.ring,
                ringStrokeWidth: 32,
                centerText: "Skin",
                legendOptions: const LegendOptions(
                  showLegendsInRow: false,
                  legendPosition: LegendPosition.right,
                  showLegends: true,
                  legendTextStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                chartValuesOptions: const ChartValuesOptions(
                  showChartValueBackground: true,
                  showChartValues: true,
                  showChartValuesInPercentage: false,
                  showChartValuesOutside: false,
                  decimalPlaces: 1,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

