import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:flutter/cupertino.dart';

class BottomContainer extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;

  const BottomContainer({super.key, required this.text, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kbottomContainerColor,
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kbottomContainerHeight,
        padding: const EdgeInsets.only(bottom: 15.0),
        child: Center(
          child: Text(
            text,
            style: klargeBottomButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
