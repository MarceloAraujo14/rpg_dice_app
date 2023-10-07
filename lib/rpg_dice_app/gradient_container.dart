import 'package:flutter/material.dart';
import 'package:first_flutter_app/rpg_dice_app/content_container.dart';

const beginAlign = Alignment.topCenter;
const endAlign = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  const GradientContainer(
      {this.topColor = const Color.fromARGB(255, 81, 255, 87),
      this.bottomColor = const Color.fromARGB(255, 116, 196, 25),
      super.key});

  final Color topColor;
  final Color bottomColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: beginAlign,
          end: endAlign,
          colors: [topColor, bottomColor],
        ),
      ),
      child: const ContentContainer(text: 'Hello World'),
    );
  }
}
