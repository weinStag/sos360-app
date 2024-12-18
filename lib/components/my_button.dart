import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final color;
  final onPressed;
  final icon;

  const MyButton({
    super.key,
    required this.color,
    required this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: onPressed,
              color: Colors.white,
              icon: icon,
              iconSize: 35,
            ),
          ],
        ),
      ),
    );
  }
}
