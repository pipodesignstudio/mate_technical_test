import 'package:flutter/material.dart';
import 'package:mate_technical_test/features/detail/widgets/semicircle_avatar_widget.dart';
import 'package:mate_technical_test/features/detail/widgets/semicircle_painter.dart';
import 'package:mate_technical_test/shared/widgets/others_bage_widget.dart';

class MainArcWidget extends StatelessWidget {
  const MainArcWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final double arcWidth = MediaQuery.of(context).size.width * 0.8;
    const double arcHeight = 150;
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
          top: 60,
          child: SemicircleAvatar(
          path: 'assets/img/avatar_2.jpg',
          size: 42,
        )),
        Positioned(
          left: 60,
          top: badgeVerticalOffset + 15,
          child: SemicircleAvatar(
          path: 'assets/img/avatar_1.jpg',
          size: 36,
        )),
        Positioned(
          right: - 10,
          bottom: 10,
          child: SemicircleAvatar(
          path: 'assets/img/avatar_1.jpg',
          size: 32,
        )),
        Positioned(
          top: badgeVerticalOffset,
          left: 0,
          right: 0,
          child: const Center(child: OthersBadgeWidget()),
        ),
      ],
    );
  }
}
