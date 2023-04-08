import 'package:flutter/material.dart';
import 'package:fresh/screens/diaryscreen/insigths_section.dart';
import 'package:fresh/screens/diaryscreen/progress_section.dart';
import 'package:fresh/screens/diaryscreen/timeline_section.dart';

class DiaryScreen extends StatefulWidget {
  const DiaryScreen({Key? key}) : super(key: key);

  @override
  State<DiaryScreen> createState() => _DiaryScreenState();
}

class _DiaryScreenState extends State<DiaryScreen> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = [
    TimelineSection(),
    ProgressSection(),
    InsightsSection()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          children: [
            Expanded(
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed, // Fixed
                backgroundColor: Color.fromRGBO(97, 121, 205, 0.7),
                selectedItemColor: const Color.fromRGBO(13, 28, 76, 1),
                unselectedItemColor: Colors.white,
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Timeline',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.business),
                    label: 'Progress',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.school),
                    label: 'Insigths',
                  ),
                ],
                currentIndex: _selectedIndex,
                onTap: _onItemTapped,
              ),
            ),
            Expanded(
              flex: 9,
              child: _widgetOptions.elementAt(_selectedIndex),
            )
          ],
        ),
      ),
    );
  }
}
