import 'package:flutter/material.dart';
import 'package:mangan_recipe_app/account_page.dart';
import 'package:mangan_recipe_app/home_page.dart';
import 'package:mangan_recipe_app/navigation_bar.dart';
import 'package:mangan_recipe_app/recipe_page.dart';

typedef TapNav = void Function(int value);

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const RecipePage(),
    const AccountPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          alignment: Alignment.center,
          child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: NavBar(
        selectedIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
