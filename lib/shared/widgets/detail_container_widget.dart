import 'dart:ui';

import 'package:flutter/material.dart';

class DetailContainerWidget extends StatelessWidget {
  final Widget child;
  final double? height;
  const DetailContainerWidget({super.key, required this.child, this.height});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
        child: Container(
          height: height ?? 120,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: Color.fromRGBO(42, 42, 42, .2)
          ),
          child: child,
        ),
      ),
    );
  }
}