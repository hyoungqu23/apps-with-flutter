import 'package:flutter/material.dart';

class StockAppButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color color;

  const StockAppButton({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: backgroundColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 40,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: color,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
