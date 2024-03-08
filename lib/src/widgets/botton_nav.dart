
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  final Function(int) currentIndex;
  const BottomNav({super.key, required this.currentIndex});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      onTap: (i) {
        setState(() {
          index = i;
          widget.currentIndex(i);
        });
      },
      fixedColor: Colors.white,
      backgroundColor: Colors.deepOrange,
      iconSize: 30.0,
      selectedLabelStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        letterSpacing: 2.5,
      ),
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.sports), label: 'Deportes'),
        BottomNavigationBarItem(icon: Icon(Icons.sports_esports), label: 'Juegos'),
      ]
    );
  }
}