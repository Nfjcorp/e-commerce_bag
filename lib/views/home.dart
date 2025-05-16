import 'package:flutter/material.dart';
import 'package:shopping_bag/views/profile_screen.dart';
import 'package:shopping_bag/views/settings_screen.dart';
import 'package:shopping_bag/views/shop_screen.dart';
import 'package:shopping_bag/widgets/body.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> _pages = [];
  int currentIndex = 0;
  @override
  void initState() {
    _pages = [Body(), ShopScreen(), SettingsScreen(), ProfileScreen()];
    super.initState();
  }

  void onChanged(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentIndex],
      bottomNavigationBar: bottomNavigationBuilder(),
    );
  }

  Widget bottomNavigationBuilder() {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onChanged,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorite'),
        BottomNavigationBarItem(label: 'Settings', icon: Icon(Icons.settings)),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ],
    );
  }
}
