import 'package:flutter/material.dart';

class SemicircleGradientPainter extends CustomPainter {
  final double borderWidth;

  SemicircleGradientPainter({this.borderWidth = 1.0});

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height);
    final radius = size.width / 2;

    final gradient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Colors.white,
        Color.fromRGBO(255, 255, 255, .6),
        Color.fromRGBO(255, 255, 255, 0),
      ],
    );

    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    final shader = gradient.createShader(rect);

    final paint = Paint()
      ..shader = shader
      ..style = PaintingStyle.stroke
      ..strokeWidth = borderWidth
      ..strokeCap = StrokeCap.round;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius - borderWidth / 2),
      3.14159,
      3.14159,  
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}