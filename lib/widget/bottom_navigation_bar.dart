import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  State<BottomNavigationBarWidget> createState() => _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {

  int _currentIndex = 0;
  List<Widget> body = [
    Icon(Icons.home),
    Icon(Icons.menu),
    Icon(Icons.person),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: body[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
          onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
          },
          items: [
             BottomNavigationBarItem(
                 label: 'Home',
                 icon: Icon(Icons.home)
             ),
            BottomNavigationBarItem(
                icon: Icon(Icons.menu),
                label: 'Menu'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Person'
            )
          ]
      ),
    );
  }
}
