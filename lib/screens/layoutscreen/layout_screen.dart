import 'package:flutter/material.dart';
import 'package:fresh/globals.dart' as globals;
import 'package:fresh/screens/diaryscreen/diary_screen.dart';
import 'package:fresh/screens/homescreen/home_screen.dart';
import 'package:fresh/screens/profilescreen/profile_screen.dart';
import 'package:fresh/screens/treatmentscreen/treatment_screen.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = [
    HomeScreen(),
    TreatmentScreen(),
    DiaryScreen(),
    ProfileScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    globals.fetchSkinType();
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        // Fixed
        backgroundColor: Color.fromRGBO(97, 121, 205, 0.7),
        selectedItemColor: const Color.fromRGBO(13, 28, 76, 1),
        unselectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Treatments',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Diary',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
