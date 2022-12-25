// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../Resources/colors_manager.dart';
import 'Categories_page.dart';
import 'Settings.dart';
import 'home.dart';


class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  List pages = [
    Home(), Categories(),Settings()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        showSelectedLabels: false,
        selectedItemColor: AppColors.primary,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(label: "",icon: Icon(Iconsax.home)),
          BottomNavigationBarItem(label: "",icon: Icon(Iconsax.category_2)),
          BottomNavigationBarItem(label: "",icon: Icon(Iconsax.setting_2)),
        ]
        ,),
      body: pages.elementAt(_selectedIndex),
    );
  }
}
