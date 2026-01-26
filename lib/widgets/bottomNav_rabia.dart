import 'package:flutter/material.dart';

class BottomNavRabia extends StatefulWidget {
  const BottomNavRabia({Key? key}) : super(key: key);

  @override
  State<BottomNavRabia> createState() => _BottomNavRabiaState();
}

class _BottomNavRabiaState extends State<BottomNavRabia> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    Center(child: Text('Home Screen', style: TextStyle(fontSize: 20))),
    Center(child: Text('Menu Screen', style: TextStyle(fontSize: 20))),
    Center(child: Text('Profile Screen', style: TextStyle(fontSize: 20))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
