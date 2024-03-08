
import 'package:flutter/material.dart';
import 'package:flutter_navigations/src/pages/page2.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (contex) => const Page2()
              )
            );
          }, 
          child: const Text(
            'Ir a página 2'
          )
        ),
      ),
    );
  }
}