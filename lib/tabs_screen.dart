import 'package:flutter/material.dart';
import 'package:newz_plan/drawer.dart';
import 'package:newz_plan/home.dart';
import 'package:newz_plan/models/saved.dart';
import 'package:newz_plan/saved_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    Home(), // Home Screen
    Container(color: Colors.green), // Placeholder for Search Screen
    SavedScreen(
        savedSportsNews: savedNews,
        savedWorldNews: savedNews1,
        savedBusinessNews: savedNews2), // Placeholder for Save Screen
    Container(color: Colors.yellow), // Placeholder for Profile Screen
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text(
          "News",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: _screens[_selectedIndex],
      drawer: const CustomDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.save),
            label: 'Save',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
