import 'package:driver_app/screens/account_page.dart';
import 'package:driver_app/screens/driver_home.dart';
import 'package:driver_app/screens/notification_page.dart';
import 'package:driver_app/screens/sample_page.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_bottom.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _pages = [
    const DriverHome(),
    SamplePage(),
    NotificationPage(),
    AccountPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar:
          CustomBottomNavBar(currentIndex: _currentIndex, onTap: _onTabTapped),
    );
  }
}
