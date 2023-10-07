import 'package:flutter/material.dart';
import 'package:first_flutter_app/rpg_dice_app/gradient_container.dart';

void main() {
  runApp(const MyFirstApp());
}

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          topColor: Color.fromARGB(255, 18, 107, 6),
  
        ),
      ),
    );
  }
}
