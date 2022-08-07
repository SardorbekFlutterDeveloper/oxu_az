import 'package:flutter/material.dart';

import '../views/saved.dart';
import '../views/search.dart';
import '../views/settings.dart';
import '../views/home.dart';

class MyHomePge extends StatefulWidget {
  MyHomePge({Key? key}) : super(key: key);

  @override
  State<MyHomePge> createState() => _MyHomePgeState();
}

class _MyHomePgeState extends State<MyHomePge> {
  HomePage? _homePage;
  SearchPage? _searchPage;
  SavedPage? _savedPage;
  SettingsPage? _settingsPage;
  List _pages = [];

  int _currentIndex = 0;

  @override
  void initState() {
  
    super.initState();
    _homePage =  HomePage();
      _searchPage = const SearchPage();
      _savedPage = const SavedPage();
      _settingsPage = const SettingsPage();
      _pages.addAll(
        [
          _homePage,
          _searchPage,
          _savedPage,
          _settingsPage,
        ],
      );
      setState(() {});
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (val) {
          setState(() {
            _currentIndex = val;
          });
        },
        selectedItemColor: Colors.amber,
        // fixedColor: Colors.amber,
        selectedIconTheme: IconThemeData(color: Colors.amber),
        backgroundColor: Colors.grey.shade300,
        // unselectedItemColor: Colors.red,-
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              label: "Home",
            
              ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.bookmark,
                color: Colors.black,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                color: Colors.black,
              ),
              label: "Home"),
        ],
      ),
    );
  }
}
