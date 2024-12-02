import 'package:flutter/material.dart';
import 'package:spodifyclone/bottom_navigation_items.dart';
import 'package:spodifyclone/home_screen.dart';
import 'package:spodifyclone/library_screen.dart';
import 'package:spodifyclone/search_screen.dart';
import 'package:spodifyclone/now_playing_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = const [
    HomeScreen(),
    SearchScreen(),
    LibraryScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _screens[_selectedIndex],
          const Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: NowPlayingBar(),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        backgroundColor: const Color(0xFF282828),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items: bottomNavItems,
      ),
    );
  }
}
