
import 'package:flutter/material.dart';
import 'package:flutter_navigations/src/pages/details.dart';
import 'package:flutter_navigations/src/widgets/botton_nav.dart';
import 'package:flutter_navigations/src/widgets/games_list.dart';
import 'package:flutter_navigations/src/widgets/sports_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> body = const [
      SportsList(),
      GamesList(),
    ];

    return Scaffold(
      bottomNavigationBar: BottomNav(
        currentIndex: (i) {
          setState(() {
            index = i;
          });
        },
      ),
      body: body[index]
    );
  }
}