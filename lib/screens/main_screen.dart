import 'package:a_sports/screens/home_screen.dart';
import 'package:a_sports/screens/game_screen.dart';
import 'package:a_sports/screens/lounge_screen.dart';
import 'package:a_sports/screens/profile_screen.dart';
import 'package:a_sports/screens/region_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: const [
          HomeScreen(),
          GameScreen(),
          RegionScreen(),
          LoungeScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_basketball_outlined),
            label: "Game",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map_outlined),
            label: "Region",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.coffee_outlined),
            label: "Lounge",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },

        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: _selectedIndex,
        backgroundColor: Colors.grey[100],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
      ),
    );
  }
}