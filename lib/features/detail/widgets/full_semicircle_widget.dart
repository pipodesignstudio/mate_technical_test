import 'package:flutter/material.dart';
import 'package:mate_technical_test/features/detail/widgets/main_arc_widget.dart';
import 'package:mate_technical_test/features/detail/widgets/main_avatar_widget.dart';
import 'package:mate_technical_test/features/detail/widgets/middle_arc_widget.dart';
import 'package:mate_technical_test/features/detail/widgets/inner_arc_widget.dart';

class FullSemicricle extends StatelessWidget {
  const FullSemicricle({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double maxWidth = constraints.maxWidth;
        final double baseOffsetY = -(maxWidth * 0.1);

        return AspectRatio(
          aspectRatio: 1.6,
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Align(
                alignment: const Alignment(0, -0.4),
                child: Transform.translate(
                  offset: Offset(0, baseOffsetY),
                  child: SizedBox(
                    width: maxWidth * 0.8,
                    height: maxWidth * 0.4,
                    child: const Center(child: MainArcWidget()),
                  ),
                ),
              ),
              Align(
                alignment: const Alignment(0, -0.2),
                child: Transform.translate(
                  offset: Offset(0, baseOffsetY + 12),
                  child: SizedBox(
                    width: maxWidth * 0.64,
                    height: maxWidth * 0.32,
                    child: const Center(child: MiddleArcWidget()),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Transform.translate(
                  offset: Offset(0, baseOffsetY + 24),
                  child: SizedBox(
                    width: maxWidth * 0.52,
                    height: maxWidth * 0.26,
                    child: const Center(child: InnerCircle()),
                  ),
                ),
              ),
              Align(
                alignment: const Alignment(0, 0.3),
                child: Transform.translate(
                  offset: Offset(0, baseOffsetY + 36),
                  child: const MainCircleAvatar(),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
