import 'package:flutter/material.dart';
import 'package:spotify/screens/library.dart';
import 'package:spotify/screens/premium.dart';
import 'package:spotify/screens/search.dart';
import 'home.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int selectedIndex = 0;

  List<Widget> pages() {
    return [
      Home(),
      Search(),
      Library(),
      Premium(),
    ];
  }

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages()[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
            backgroundColor: Colors.black
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            backgroundColor: Colors.black
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: 'Your Library',
            backgroundColor: Colors.black
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.workspace_premium),
            label: 'Premium',
            backgroundColor: Colors.black
          ),
        ],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
      ),
    );
  }
}
