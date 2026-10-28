import 'package:flutter/material.dart';

class BlobBackground extends StatelessWidget {
  final Widget child;

  const BlobBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFDE9DD), // Soft peach background
      child: Stack(
        children: [
          // Top-right orange-red blob
          Positioned(
            top: -50,
            right: -30,
            child: Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                color: const Color(0xFFFF6B3D).withValues(alpha: 0.85),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(90),
                  topLeft: Radius.circular(40),
                  bottomRight: Radius.circular(60),
                ),
              ),
            ),
          ),
          // Bottom-left yellow blob
          Positioned(
            bottom: -40,
            left: -40,
            child: Container(
              width: 220,
              height: 220,
              decoration: BoxDecoration(
                color: const Color(0xFFFFB61A).withValues(alpha: 0.9),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(110),
                  bottomRight: Radius.circular(80),
                  topLeft: Radius.circular(60),
                ),
              ),
            ),
          ),
          // Center-left lighter peach overlapping blob
          Positioned(
            top: 200,
            left: -60,
            child: Container(
              width: 160,
              height: 160,
              decoration: BoxDecoration(
                color: const Color(0xFFFBD8C4).withValues(alpha: 0.7),
                shape: BoxShape.circle,
              ),
            ),
          ),
          SafeArea(child: child),
        ],
      ),
    );
  }
}
