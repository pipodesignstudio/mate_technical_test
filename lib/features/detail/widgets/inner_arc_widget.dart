import 'package:flutter/material.dart';
import 'package:mate_technical_test/features/detail/widgets/semicircle_avatar_widget.dart';
import 'package:mate_technical_test/features/detail/widgets/semicircle_painter.dart';

class InnerCircle extends StatelessWidget {
  const InnerCircle({super.key});

  @override
  Widget build(BuildContext context) {
    final double arcWidth = MediaQuery.of(context).size.width * 0.8;
    const double arcHeight = 90;
    // TODO: improve how this value is calculated
    const double badgeVerticalOffset = - 28; 

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Center(
          child: SizedBox(
            width: arcWidth,
            height: arcHeight,
            child:  CustomPaint(
              painter: SemicircleGradientPainter(),
            ),
          ),
        ),
        Positioned(
          left: 0,
          bottom: 50,
          child: SemicircleAvatar(
          path: 'assets/img/avatar_1.jpg',
          size: 42,
        )),
        Positioned(
          right: 50,
          top: badgeVerticalOffset,
          child: SemicircleAvatar(
          path: 'assets/img/avatar_3.jpg',
          size: 36,
        )),
      ],
    );
  }
}