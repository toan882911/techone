import 'package:flutter/material.dart';
class Values {
  static final List<String> categoryNames = [
    'Camera',
    'TV & Audio',
    'Laptop & Computer',
    'Accessories',
    'Smartphone & Table',
    'Printers & INK',
    'Game & Console',
    'Headphone'
  ];
  static final List<IconData> categoryIcons = [
    Icons.camera_alt,
    Icons.tv,
    Icons.laptop,
    Icons.build,
    Icons.smartphone,
    Icons.print,
    Icons.games,
    Icons.headset
  ];
  static final itemsBottomNavigationBar = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      title: Text('Home'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.search),
      title: Text('Search'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.notifications),
      title: Text('Notification'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.account_box),
      title: Text('Account'),
    ),
  ];
}