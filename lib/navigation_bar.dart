import 'package:flutter/material.dart';

typedef TapNav = void Function(int value);

class NavBar extends StatelessWidget {
  const NavBar({super.key, required this.selectedIndex, required this.onTap});

  final int selectedIndex;
  final TapNav onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showUnselectedLabels: false,
      showSelectedLabels: false,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.book),
          label: 'Recipe',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Account',
        ),
      ],
      currentIndex: selectedIndex,
      onTap: ((value) => onTap(value)),
    );
  }
}
