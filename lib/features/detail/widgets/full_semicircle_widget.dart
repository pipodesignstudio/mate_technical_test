import 'package:flutter/material.dart';
import 'package:mate_technical_test/features/detail/widgets/main_arc_widget.dart';
import 'package:mate_technical_test/features/detail/widgets/middle_arc_widget.dart';
import 'package:mate_technical_test/features/detail/widgets/inner_arc_widget.dart';

class FullSemicricle extends StatelessWidget {
  const FullSemicricle({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width * 0.8;
    const double baseOffsetY = -40;

    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Transform.translate(
          offset: const Offset(0, baseOffsetY),
          child: SizedBox(
            width: width,
            height: 150,
            child: const Center(child: MainArcWidget()),
          ),
        ),
        Transform.translate(
          offset: const Offset(0, baseOffsetY + 20),
          child: SizedBox(
            width: width * 0.8,
            height: 120,
            child: const Center(child: MiddleArcWidget()),
          ),
        ),
        Transform.translate(
          offset: const Offset(0, baseOffsetY + 40),
          child: SizedBox(
            width: width * 0.65,
            height: 90,
            child: const Center(child: InnerCircle()),
          ),
        ),
      ],
    );
  }
}
