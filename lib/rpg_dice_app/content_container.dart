import 'package:first_flutter_app/rpg_dice_app/dice_roller.dart';
import 'package:flutter/material.dart';

class ContentContainer extends StatelessWidget {
  const ContentContainer({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: DiceRoller());
  }
}
