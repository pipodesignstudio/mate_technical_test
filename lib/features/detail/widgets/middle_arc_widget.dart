import 'package:flutter/material.dart';
import 'package:mate_technical_test/features/detail/widgets/semicircle_avatar_widget.dart';
import 'package:mate_technical_test/features/detail/widgets/semicircle_painter.dart';

class MiddleArcWidget extends StatelessWidget {
  const MiddleArcWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final double arcWidth = MediaQuery.of(context).size.width * 0.8;
    const double arcHeight = 120;
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
          left: -10,
          bottom: 0,
          child: SemicircleAvatar(
          path: 'assets/img/avatar_2.jpg',
          size: 32,
        )),
        Positioned(
          left: 120,
          top: badgeVerticalOffset,
          child: SemicircleAvatar(
          path: 'assets/img/avatar_2.jpg',
          size: 36,
        )),
        Positioned(
          right: - badgeVerticalOffset,
          bottom: 80,
          child: SemicircleAvatar(
          path: 'assets/img/avatar_2.jpg',
          size: 32,
        )),
      ],
    );
  }
}