import 'package:doctor_application/screens/home.dart';
import 'package:doctor_application/screens/schedule_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedindex = 0;
  final _screens = [HomeScreen(), Container(), ScheduleScreen(), Container()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_selectedindex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.redAccent,
          selectedLabelStyle:
              TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          currentIndex: _selectedindex,
          onTap: (i) {
            setState(() {
              _selectedindex = i;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble), label: "Messages"),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month_outlined), label: "Schedule"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settigns"),
          ]),
    );
  }
}
