import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const RoundIconButton({super.key, required this.icon, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: const BoxConstraints.tightFor(
        width: 50.0,
        height: 50.0,
      ),
      elevation: 0.0,
      onPressed: onPressed,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      fillColor: const Color(0xFF4C4F5E),
      child: Icon(icon),
    );
  }
}
