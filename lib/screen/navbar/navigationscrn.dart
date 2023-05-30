import 'package:flutter/material.dart';
import 'package:netflics/screen/downloads/downloads_scrn.dart';
import 'package:netflics/screen/search/searchscreen.dart';
import 'package:netflics/screen/homescreenfolder/homescreen.dart';
import 'package:netflics/screen/new_and_hot/new_and_hot_scrn.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  final List<Widget> bodylist = [
    const HomeScreen(),
     SearchScrn(),
    const NewAndHotScrn(),
    const DownloadsScreen()
  ];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: bodylist[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
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
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_library_outlined), label: 'New & Hot'),
            BottomNavigationBarItem(
                icon: Icon(Icons.download_for_offline_outlined),
                label: 'Downloads')
          ]),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
