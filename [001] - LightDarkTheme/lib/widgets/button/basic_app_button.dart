import 'package:flutter/material.dart';

class BasicAppButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final double? height;
  final double? fontSize;
  final Color? color;

  const BasicAppButton({super.key, required this.onPressed, required this.title, this.height, this.fontSize, this.color});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: Size.fromHeight(height ?? 80)
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: fontSize ?? 22,
          fontWeight: FontWeight.bold,
          color: color ?? Colors.white,
        )
      ),
    );
  }
}
