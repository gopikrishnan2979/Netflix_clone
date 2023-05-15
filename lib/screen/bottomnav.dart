import 'package:flutter/material.dart';

class BottamNav extends StatefulWidget {
  const BottamNav({super.key});

  @override
  State<BottamNav> createState() => _BottamNavState();
}

class _BottamNavState extends State<BottamNav> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        selectedFontSize: 11,
        unselectedFontSize: 11,
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 255, 255, 255),
        unselectedItemColor: Colors.grey,
        iconSize: 30,
        type: BottomNavigationBarType.fixed,
        onTap: (value) => _onItemTapped(value),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.gamepad_outlined), label: 'Game'),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_library_outlined), label: 'New & Hot'),
          BottomNavigationBarItem(
              icon: Icon(Icons.download_for_offline_outlined),
              label: 'Downloads')
        ]);
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
