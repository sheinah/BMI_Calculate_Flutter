import 'package:flutter/material.dart';

class ReusableBg extends StatelessWidget {
  // ignore: non_constant_identifier_names
  const ReusableBg({super.key, required this.colour, required this.cardChild}); //remove required
  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: cardChild,
    );
  }
}
