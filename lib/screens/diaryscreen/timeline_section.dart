import 'package:flutter/material.dart';
import 'package:flutter_advanced_calendar/flutter_advanced_calendar.dart';
import 'package:intl/intl.dart';

class TimelineSection extends StatefulWidget {
  const TimelineSection({Key? key}) : super(key: key);

  @override
  State<TimelineSection> createState() => _TimelineSectionState();
}

class _TimelineSectionState extends State<TimelineSection> {
  final _calendarControllerToday = AdvancedCalendarController.today();
  final List<DateTime> events = [
    DateTime.now(),
    DateTime(2022, 10, 10),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            setState(() {});
          },
          child: AdvancedCalendar(
            controller: _calendarControllerToday,
            events: events,
            weekLineHeight: 48.0,
            startWeekDay: 1,
            innerDot: true,
            keepLineSize: true,
            calendarTextStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              height: 1.3125,
              letterSpacing: 0,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                DateFormat('dd MMMM yyyy')
                    .format(_calendarControllerToday.value),
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
              ),
              Text("Today"),
              Container(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Go to My Plan"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
