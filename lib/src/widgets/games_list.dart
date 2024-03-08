
import 'package:flutter/material.dart';

class GamesList extends StatelessWidget {
  const GamesList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Card(
        color: Colors.grey,
        shadowColor: Colors.green,
        elevation: 12.0,
        child: Padding(
          padding: EdgeInsets.all(80.0),
          child: Text(
            'No hay juegos programados',
          ),
        ),
      ),
    );
  }
}