import 'package:flutter/material.dart';

class CustomRoundIconButton extends StatelessWidget {
  final IconData icon;

  const CustomRoundIconButton({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          width: 1,
          color: Colors.white,
        ),
      ),
      child: Icon(
        icon,
        size: 17,
        color: Colors.white,
      ),
    );
  }
}