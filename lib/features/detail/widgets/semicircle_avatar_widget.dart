import 'package:flutter/material.dart';

class SemicircleAvatar extends StatelessWidget {
  final String path;
  final double size;
  const SemicircleAvatar({super.key, required this.path, required this.size});

  @override
  Widget build(BuildContext context) {
    return  ClipOval(
      child: Image.asset(
        path,
        width: size,
        height: size,
        fit: BoxFit.cover,
      ),
    );
  }
}