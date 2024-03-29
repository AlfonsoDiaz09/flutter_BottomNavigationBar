
import 'package:flutter/material.dart';
import 'package:flutter_navigations/src/pages/home_page.dart';
import 'package:flutter_navigations/src/pages/page1.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: HomePage()
    );
  }
}