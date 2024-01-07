import 'package:flutter/material.dart';

class StockAppCard extends StatelessWidget {
  final String text, amount, unit;
  final IconData icon;
  final int order;
  final bool isInverted;

  final _black = const Color(0xFF1F2123);

  const StockAppCard({
    super.key,
    required this.text,
    required this.amount,
    required this.icon,
    required this.unit,
    required this.order,
    this.isInverted = false,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, -order * 20),
      child: Container(
        decoration: BoxDecoration(
          color: isInverted ? Colors.white : _black,
          borderRadius: BorderRadius.circular(20),
        ),
        clipBehavior: Clip.hardEdge,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 32,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: TextStyle(
                      color: isInverted ? _black : Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Text(
                        amount,
                        style: TextStyle(
                          color: isInverted ? _black : Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        unit,
                        style: TextStyle(
                          color: isInverted
                              ? _black.withOpacity(0.8)
                              : Colors.white.withOpacity(0.8),
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Transform.scale(
                scale: 2,
                child: Transform.translate(
                  offset: const Offset(0, 16),
                  child: Icon(
                    icon,
                    color: isInverted ? _black : Colors.white,
                    size: 96,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
