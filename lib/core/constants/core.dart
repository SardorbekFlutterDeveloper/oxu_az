import 'package:flutter/material.dart';

class TabBBar {
  static List<Tab> myTabs = [
    const Tab(
      text: "All news",
    ),
    const Tab(
      text: "Business",
    ),
    const Tab(
      text: "Politics",
    ),
    const Tab(
      text: "Tech",
    ),
    const Tab(
      text: "Science",
    ),
  ];

  static  List<Tab> kTabsPages = [
    Tab(
      icon: Icon(Icons.home),
    ), 
    Tab(
      icon: Icon(Icons.search),

    ),
    Tab(
      icon: Icon(Icons.bookmark),

    ),
    Tab(
      icon: Icon(Icons.settings),
      
    ),
  ];
}
