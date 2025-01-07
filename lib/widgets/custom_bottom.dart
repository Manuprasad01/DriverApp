import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });
  final List<Map<String, String>> icons = [
    {
      'normal': 'assets/icons/home.png',
      'selected': 'assets/icons/home_sel.png',
    },
    {
      'normal': 'assets/icons/icon2.png',
      'selected': 'assets/icons/icon2_sel.png',
    },
    {
      'normal': 'assets/icons/icon3.png',
      'selected': 'assets/icons/icon3_sel.png',
    },
    {
      'normal': 'assets/icons/icon4.png',
      'selected': 'assets/icons/icon4_sel.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: Colors.black,
        currentIndex: currentIndex,
        onTap: onTap,
        type: BottomNavigationBarType.fixed,
        items: List.generate(icons.length, (index) {
          final isselected = currentIndex == index;

          final iconpath =
              isselected ? icons[index]['selected']! : icons[index]['normal']!;
          final iconsize = isselected ? 34.0 : 24.0;
          return BottomNavigationBarItem(
              icon: Image.asset(
                iconpath,
                width: iconsize,
                height: iconsize,
              ),
              label: '');
        }));
  }
}
