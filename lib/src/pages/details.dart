
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final Map<String, String> myImage;

  const DetailsPage({super.key, required this.myImage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: Text(
          myImage['name']!
        ),
      ),
      body: Container(
        height: 350.0,
        child: Image(
          fit: BoxFit.cover,
          image: NetworkImage(
            myImage['image']!
          ),
        ),
      ),
    );
  }
}